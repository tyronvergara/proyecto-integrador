-- Usar la base de datos "OutShoes"

USE `OutShoes`;

-- Insertar marcas en la tabla "marca"

INSERT INTO `marca` (nombre) VALUES ('Adidas');
INSERT INTO `marca` (nombre) VALUES ('Converse');
INSERT INTO `marca` (nombre) VALUES ('Disney');
INSERT INTO `marca` (nombre) VALUES ('Dockers');
INSERT INTO `marca` (nombre) VALUES ('Efe');
INSERT INTO `marca` (nombre) VALUES ('Gonsa');
INSERT INTO `marca` (nombre) VALUES ('Gosh');
INSERT INTO `marca` (nombre) VALUES ('Lenmarq');
INSERT INTO `marca` (nombre) VALUES ('Levis');
INSERT INTO `marca` (nombre) VALUES ('Nike');
INSERT INTO `marca` (nombre) VALUES ('Paulina');
INSERT INTO `marca` (nombre) VALUES ('Perez Lete');
INSERT INTO `marca` (nombre) VALUES ('Ruiditos');
INSERT INTO `marca` (nombre) VALUES ('Sesamo');
INSERT INTO `marca` (nombre) VALUES ('Tropicana');

-- Insertar categorías en la tabla "categoria"

INSERT INTO `categoria` (nombre) VALUES ('Hombre');
INSERT INTO `categoria` (nombre) VALUES ('Mujer');
INSERT INTO `categoria` (nombre) VALUES ('Niña');
INSERT INTO `categoria` (nombre) VALUES ('Niño');

-- Insertar tipos de usuario en la tabla "tipo"

INSERT INTO `tipo` (nombre) VALUES ("administrador");
INSERT INTO `tipo` (nombre) VALUES ("cliente");

-- Insertar las colecciones en la tabla "Coleccion"

INSERT INTO `coleccion` (nombre) VALUES ('Botas');
INSERT INTO `coleccion` (nombre) VALUES ('Pantuflas');
INSERT INTO `coleccion` (nombre) VALUES ('Sandalias');
INSERT INTO `coleccion` (nombre) VALUES ('Tenis');
INSERT INTO `coleccion` (nombre) VALUES ('Zapatillas');
INSERT INTO `coleccion` (nombre) VALUES ('Zapato');

-- Insertar los estados del pedido en la tabla "estadopedido"

INSERT INTO `estado` (nombre) VALUES ('Devuelto');
INSERT INTO `estado` (nombre) VALUES ('Empaquetado');
INSERT INTO `estado` (nombre) VALUES ('Enviado');
INSERT INTO `estado` (nombre) VALUES ('Pagado');
INSERT INTO `estado` (nombre) VALUES ('Pago en proceso');
INSERT INTO `estado` (nombre) VALUES ('Recibido');
INSERT INTO `estado` (nombre) VALUES ('Sin pagar');

-- Insertar las tallas 

INSERT INTO `talla` (numero) VALUES ('8');
INSERT INTO `talla` (numero) VALUES ('8.5');
INSERT INTO `talla` (numero) VALUES ('9');
INSERT INTO `talla` (numero) VALUES ('9.5');
INSERT INTO `talla` (numero) VALUES ('10');
INSERT INTO `talla` (numero) VALUES ('10.5');
INSERT INTO `talla` (numero) VALUES ('11');
INSERT INTO `talla` (numero) VALUES ('11.5');
INSERT INTO `talla` (numero) VALUES ('12');
INSERT INTO `talla` (numero) VALUES ('12.5');
INSERT INTO `talla` (numero) VALUES ('13');
INSERT INTO `talla` (numero) VALUES ('13.5');
INSERT INTO `talla` (numero) VALUES ('14');
INSERT INTO `talla` (numero) VALUES ('14.5');
INSERT INTO `talla` (numero) VALUES ('15');
INSERT INTO `talla` (numero) VALUES ('15.5');
INSERT INTO `talla` (numero) VALUES ('16');
INSERT INTO `talla` (numero) VALUES ('16.5');
INSERT INTO `talla` (numero) VALUES ('17');
INSERT INTO `talla` (numero) VALUES ('17.5');
INSERT INTO `talla` (numero) VALUES ('18');
INSERT INTO `talla` (numero) VALUES ('18.5');
INSERT INTO `talla` (numero) VALUES ('19');
INSERT INTO `talla` (numero) VALUES ('19.5');
INSERT INTO `talla` (numero) VALUES ('20');
INSERT INTO `talla` (numero) VALUES ('20.5');
INSERT INTO `talla` (numero) VALUES ('21');
INSERT INTO `talla` (numero) VALUES ('21.5');
INSERT INTO `talla` (numero) VALUES ('22');
INSERT INTO `talla` (numero) VALUES ('22.5');
INSERT INTO `talla` (numero) VALUES ('23');
INSERT INTO `talla` (numero) VALUES ('23.5');
INSERT INTO `talla` (numero) VALUES ('24');
INSERT INTO `talla` (numero) VALUES ('24.5');
INSERT INTO `talla` (numero) VALUES ('25');
INSERT INTO `talla` (numero) VALUES ('25.5');
INSERT INTO `talla` (numero) VALUES ('26');
INSERT INTO `talla` (numero) VALUES ('26.5');
INSERT INTO `talla` (numero) VALUES ('27');
INSERT INTO `talla` (numero) VALUES ('27.5');
INSERT INTO `talla` (numero) VALUES ('28');
INSERT INTO `talla` (numero) VALUES ('28.5');
INSERT INTO `talla` (numero) VALUES ('29');
INSERT INTO `talla` (numero) VALUES ('29.5');
INSERT INTO `talla` (numero) VALUES ('30');