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

-- Insertar colores en la tabla "colores"

INSERT INTO `color` (nombre) VALUES ('Azul');
INSERT INTO `color` (nombre) VALUES ('Beige');
INSERT INTO `color` (nombre) VALUES ('Blanco');
INSERT INTO `color` (nombre) VALUES ('Café');
INSERT INTO `color` (nombre) VALUES ('Negro');
INSERT INTO `color` (nombre) VALUES ('Plateado');
INSERT INTO `color` (nombre) VALUES ('Rosa');

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

INSERT INTO `estadopedido` (nombre) VALUES ('Devuelto');
INSERT INTO `estadopedido` (nombre) VALUES ('Empaquetado');
INSERT INTO `estadopedido` (nombre) VALUES ('Enviado');
INSERT INTO `estadopedido` (nombre) VALUES ('Pagado');
INSERT INTO `estadopedido` (nombre) VALUES ('Pago en proceso');
INSERT INTO `estadopedido` (nombre) VALUES ('Recibido');
INSERT INTO `estadopedido` (nombre) VALUES ('Sin pagar');

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

-- Relación entre tallas y categorias en la tabla "RelacionTalla"

-- -- -- Talla Hombre

INSERT INTO `RelacionTalla` (talla, categoria) VALUES (35,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (36,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (37,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (38,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (39,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (40,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (41,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (42,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (43,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (44,1);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (45,1);

-- -- -- Tallas mujeres

INSERT INTO `RelacionTalla` (talla, categoria) VALUES (29,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (30,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (31,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (32,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (33,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (34,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (35,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (36,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (37,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (38,2);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (39,2);

-- -- -- Tallas de niña

INSERT INTO `RelacionTalla` (talla, categoria) VALUES (1,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (2,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (3,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (4,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (5,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (6,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (7,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (8,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (9,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (10,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (11,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (12,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (13,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (14,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (15,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (16,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (17,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (18,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (19,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (20,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (21,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (22,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (23,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (24,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (25,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (26,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (27,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (28,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (29,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (30,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (31,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (32,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (33,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (34,3);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (35,3);

-- -- -- Tallas de niño

INSERT INTO `RelacionTalla` (talla, categoria) VALUES (1,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (2,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (3,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (4,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (5,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (6,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (7,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (8,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (9,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (10,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (11,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (12,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (13,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (14,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (15,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (16,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (17,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (18,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (19,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (20,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (21,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (22,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (23,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (24,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (25,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (26,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (27,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (28,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (29,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (30,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (31,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (32,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (33,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (34,4);
INSERT INTO `RelacionTalla` (talla, categoria) VALUES (35,4);