
-- Usar la base de datos "OutShoes"

USE `OutShoes`;

-- Insertar marcas en la tabla "marca"

INSERT INTO `marca` (nombreMarca) VALUES ('Adidas');
INSERT INTO `marca` (nombreMarca) VALUES ('Converse');
INSERT INTO `marca` (nombreMarca) VALUES ('Disney');
INSERT INTO `marca` (nombreMarca) VALUES ('Dockers');
INSERT INTO `marca` (nombreMarca) VALUES ('Efe');
INSERT INTO `marca` (nombreMarca) VALUES ('Gonsa');
INSERT INTO `marca` (nombreMarca) VALUES ('Gosh');
INSERT INTO `marca` (nombreMarca) VALUES ('Lenmarq');
INSERT INTO `marca` (nombreMarca) VALUES ('Levis');
INSERT INTO `marca` (nombreMarca) VALUES ('Nike');
INSERT INTO `marca` (nombreMarca) VALUES ('Paulina');
INSERT INTO `marca` (nombreMarca) VALUES ('Perez Lete');
INSERT INTO `marca` (nombreMarca) VALUES ('Ruiditos');
INSERT INTO `marca` (nombreMarca) VALUES ('Sesamo');
INSERT INTO `marca` (nombreMarca) VALUES ('Tropicana');

-- Insertar categorías en la tabla "categoria"

INSERT INTO `categoria` (nombreCategoria) VALUES ('Hombre');
INSERT INTO `categoria` (nombreCategoria) VALUES ('Mujer');
INSERT INTO `categoria` (nombreCategoria) VALUES ('Niña');
INSERT INTO `categoria` (nombreCategoria) VALUES ('Niño');

-- Insertar colores en la tabla "colores"

INSERT INTO `color` (nombreColor) VALUES ('Azul');
INSERT INTO `color` (nombreColor) VALUES ('Beige');
INSERT INTO `color` (nombreColor) VALUES ('Blanco');
INSERT INTO `color` (nombreColor) VALUES ('Café');
INSERT INTO `color` (nombreColor) VALUES ('Negro');
INSERT INTO `color` (nombreColor) VALUES ('Plateado');
INSERT INTO `color` (nombreColor) VALUES ('Rosa');


-- Insertar tipos de usuario en la tabla "tipo"

INSERT INTO `tipo` (nombreTipo) VALUES ("administrador");
INSERT INTO `tipo` (nombreTipo) VALUES ("cliente");


-- Insertar las colecciones en la tabla "Coleccion"

INSERT INTO `coleccion` (nombreColeccion) VALUES ('Botas y Botínes');
INSERT INTO `coleccion` (nombreColeccion) VALUES ('Pantuflas');
INSERT INTO `coleccion` (nombreColeccion) VALUES ('Sandalias');
INSERT INTO `coleccion` (nombreColeccion) VALUES ('Tenis');
INSERT INTO `coleccion` (nombreColeccion) VALUES ('Zapatillas');
INSERT INTO `coleccion` (nombreColeccion) VALUES ('Zapato');

-- Insertar los estados del pedido en la tabla "estadopedido"

INSERT INTO `estadopedido` (nombreEstado) VALUES ('Devuelto');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Empaquetado');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Enviado');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Pagado');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Pago en proceso');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Recibido');
INSERT INTO `estadopedido` (nombreEstado) VALUES ('Sin pagar');

