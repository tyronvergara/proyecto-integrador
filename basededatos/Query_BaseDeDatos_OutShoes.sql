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
  `idMarca` INT NOT NULL AUTO_INCREMENT,
  `nombreMarca` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Producto` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `nombreProducto` VARCHAR(255) NULL,
  `descripcionProducto` VARCHAR(1000) NULL,
  `marcaProducto` INT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `idProducto_UNIQUE` (`idProducto` ASC) VISIBLE,
  INDEX `marcaProducto_idx` (`marcaProducto` ASC) VISIBLE,
  CONSTRAINT `marcaProducto`
    FOREIGN KEY (`marcaProducto`)
    REFERENCES `outshoes`.`Marca` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `nombreCategoria` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Coleccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Coleccion` (
  `idColeccion` INT NOT NULL AUTO_INCREMENT,
  `nombreColeccion` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idColeccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Tipo` (
  `idTipo` INT NOT NULL AUTO_INCREMENT,
  `nombreTipo` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Direccion` (
  `idDireccion` INT NOT NULL AUTO_INCREMENT,
  `lineaunoDireccion` VARCHAR(255) NOT NULL,
  `lineadosDireccion` VARCHAR(255) NULL,
  `estadoDireccion` VARCHAR(255) NOT NULL,
  `ciudadDireccion` VARCHAR(255) NOT NULL,
  `cpDireccion` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idDireccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombreUsuario` VARCHAR(255) NOT NULL,
  `apellidopUsuario` VARCHAR(255) NOT NULL,
  `apellidomUsuario` VARCHAR(255) NULL,
  `telefonoUsuario` VARCHAR(10) NOT NULL,
  `correoUsuario` VARCHAR(255) NOT NULL,
  `nacimientoUsuario` DATE NOT NULL,
  `tipoUsuario` INT NOT NULL,
  `direccionUsuario` INT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `tipoUsuario_idx` (`tipoUsuario` ASC) VISIBLE,
  INDEX `direccionUsuario_idx` (`direccionUsuario` ASC) VISIBLE,
  CONSTRAINT `tipoUsuario`
    FOREIGN KEY (`tipoUsuario`)
    REFERENCES `outshoes`.`Tipo` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `direccionUsuario`
    FOREIGN KEY (`direccionUsuario`)
    REFERENCES `outshoes`.`Direccion` (`idDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Talla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Talla` (
  `idTalla` INT NOT NULL AUTO_INCREMENT,
  `numeroTalla` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`idTalla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Color` (
  `idColor` INT NOT NULL AUTO_INCREMENT,
  `nombreColor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`RelacionTalla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`RelacionTalla` (
  `idRelacionTalla` INT NOT NULL AUTO_INCREMENT,
  `tallaRelacion` INT NOT NULL,
  `categoriaRelacion` INT NOT NULL,
  PRIMARY KEY (`idRelacionTalla`),
  INDEX `tallaRelacion_idx` (`tallaRelacion` ASC) VISIBLE,
  INDEX `categoriaTalla_idx` (`categoriaRelacion` ASC) VISIBLE,
  CONSTRAINT `tallaRelacion`
    FOREIGN KEY (`tallaRelacion`)
    REFERENCES `outshoes`.`Talla` (`idTalla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoriaTalla`
    FOREIGN KEY (`categoriaRelacion`)
    REFERENCES `outshoes`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Inventario` (
  `idInventario` INT NOT NULL AUTO_INCREMENT,
  `productoInventario` INT NOT NULL,
  `colorInventario` INT NOT NULL,
  `tallaInventario` INT NOT NULL,
  `cantidadInventario` INT NOT NULL,
  `categoriaInventario` INT NOT NULL,
  `coleccionInventario` INT NOT NULL,
  `precioInventario` INT NOT NULL,
  `imagenInventario` VARCHAR(255) NULL,
  `skuInventario` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idInventario`),
  INDEX `productoInventario_idx` (`productoInventario` ASC) VISIBLE,
  INDEX `colorInventario_idx` (`colorInventario` ASC) VISIBLE,
  INDEX `categoriaInventario_idx` (`categoriaInventario` ASC) VISIBLE,
  INDEX `coleccionInventario_idx` (`coleccionInventario` ASC) VISIBLE,
  INDEX `tallaInventario_idx` (`tallaInventario` ASC) VISIBLE,
  CONSTRAINT `productoInventario`
    FOREIGN KEY (`productoInventario`)
    REFERENCES `outshoes`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `colorInventario`
    FOREIGN KEY (`colorInventario`)
    REFERENCES `outshoes`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoriaInventario`
    FOREIGN KEY (`categoriaInventario`)
    REFERENCES `outshoes`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `coleccionInventario`
    FOREIGN KEY (`coleccionInventario`)
    REFERENCES `outshoes`.`Coleccion` (`idColeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tallaInventario`
    FOREIGN KEY (`tallaInventario`)
    REFERENCES `outshoes`.`RelacionTalla` (`idRelacionTalla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Favorito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Favorito` (
  `idFavorito` INT NOT NULL AUTO_INCREMENT,
  `usuarioFavorito` INT NOT NULL,
  `inventarioFavorito` INT NOT NULL,
  PRIMARY KEY (`idFavorito`),
  INDEX `inventarioFavorito_idx` (`inventarioFavorito` ASC) VISIBLE,
  INDEX `usuarioFavorito_idx` (`usuarioFavorito` ASC) VISIBLE,
  CONSTRAINT `inventarioFavorito`
    FOREIGN KEY (`inventarioFavorito`)
    REFERENCES `outshoes`.`Inventario` (`idInventario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioFavorito`
    FOREIGN KEY (`usuarioFavorito`)
    REFERENCES `outshoes`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Carrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Carrito` (
  `idCarrito` INT NOT NULL AUTO_INCREMENT,
  `usuarioCarrito` INT NOT NULL,
  `inventarioCarrito` INT NOT NULL,
  `cantidadinventarioCarrito` INT NOT NULL,
  PRIMARY KEY (`idCarrito`),
  INDEX `inventarioCarrito_idx` (`inventarioCarrito` ASC) VISIBLE,
  INDEX `usuarioCarrito_idx` (`usuarioCarrito` ASC) VISIBLE,
  CONSTRAINT `inventarioCarrito`
    FOREIGN KEY (`inventarioCarrito`)
    REFERENCES `outshoes`.`Inventario` (`idInventario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioCarrito`
    FOREIGN KEY (`usuarioCarrito`)
    REFERENCES `outshoes`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`EstadoPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`EstadoPedido` (
  `idEstadoPedido` INT NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idEstadoPedido`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`HistorialPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`HistorialPedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `usuarioHistorial` INT NOT NULL,
  `inventarioHistorial` INT NOT NULL,
  `estadoHistorial` INT NOT NULL,
  `cantidadHistorial` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `estadoHistorial_idx` (`estadoHistorial` ASC) VISIBLE,
  INDEX `usuarioHistorial_idx` (`usuarioHistorial` ASC) VISIBLE,
  INDEX `inventarioHistorial_idx` (`inventarioHistorial` ASC) VISIBLE,
  CONSTRAINT `estadoHistorial`
    FOREIGN KEY (`estadoHistorial`)
    REFERENCES `outshoes`.`EstadoPedido` (`idEstadoPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioHistorial`
    FOREIGN KEY (`usuarioHistorial`)
    REFERENCES `outshoes`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `inventarioHistorial`
    FOREIGN KEY (`inventarioHistorial`)
    REFERENCES `outshoes`.`Inventario` (`idInventario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
