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

INSERT INTO `coleccion` (nombreColeccion) VALUES ('Botas');
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

-- Insertar las tallas 

INSERT INTO `talla` (numeroTalla) VALUES ('8');
INSERT INTO `talla` (numeroTalla) VALUES ('8.5');
INSERT INTO `talla` (numeroTalla) VALUES ('9');
INSERT INTO `talla` (numeroTalla) VALUES ('9.5');
INSERT INTO `talla` (numeroTalla) VALUES ('10');
INSERT INTO `talla` (numeroTalla) VALUES ('10.5');
INSERT INTO `talla` (numeroTalla) VALUES ('11');
INSERT INTO `talla` (numeroTalla) VALUES ('11.5');
INSERT INTO `talla` (numeroTalla) VALUES ('12');
INSERT INTO `talla` (numeroTalla) VALUES ('12.5');
INSERT INTO `talla` (numeroTalla) VALUES ('13');
INSERT INTO `talla` (numeroTalla) VALUES ('13.5');
INSERT INTO `talla` (numeroTalla) VALUES ('14');
INSERT INTO `talla` (numeroTalla) VALUES ('14.5');
INSERT INTO `talla` (numeroTalla) VALUES ('15');
INSERT INTO `talla` (numeroTalla) VALUES ('15.5');
INSERT INTO `talla` (numeroTalla) VALUES ('16');
INSERT INTO `talla` (numeroTalla) VALUES ('16.5');
INSERT INTO `talla` (numeroTalla) VALUES ('17');
INSERT INTO `talla` (numeroTalla) VALUES ('17.5');
INSERT INTO `talla` (numeroTalla) VALUES ('18');
INSERT INTO `talla` (numeroTalla) VALUES ('18.5');
INSERT INTO `talla` (numeroTalla) VALUES ('19');
INSERT INTO `talla` (numeroTalla) VALUES ('19.5');
INSERT INTO `talla` (numeroTalla) VALUES ('20');
INSERT INTO `talla` (numeroTalla) VALUES ('20.5');
INSERT INTO `talla` (numeroTalla) VALUES ('21');
INSERT INTO `talla` (numeroTalla) VALUES ('21.5');
INSERT INTO `talla` (numeroTalla) VALUES ('22');
INSERT INTO `talla` (numeroTalla) VALUES ('22.5');
INSERT INTO `talla` (numeroTalla) VALUES ('23');
INSERT INTO `talla` (numeroTalla) VALUES ('23.5');
INSERT INTO `talla` (numeroTalla) VALUES ('24');
INSERT INTO `talla` (numeroTalla) VALUES ('24.5');
INSERT INTO `talla` (numeroTalla) VALUES ('25');
INSERT INTO `talla` (numeroTalla) VALUES ('25.5');
INSERT INTO `talla` (numeroTalla) VALUES ('26');
INSERT INTO `talla` (numeroTalla) VALUES ('26.5');
INSERT INTO `talla` (numeroTalla) VALUES ('27');
INSERT INTO `talla` (numeroTalla) VALUES ('27.5');
INSERT INTO `talla` (numeroTalla) VALUES ('28');
INSERT INTO `talla` (numeroTalla) VALUES ('28.5');
INSERT INTO `talla` (numeroTalla) VALUES ('29');
INSERT INTO `talla` (numeroTalla) VALUES ('29.5');
INSERT INTO `talla` (numeroTalla) VALUES ('30');

-- Relación entre tallas y categorias en la tabla "RelacionTalla"

-- -- -- Talla Hombre

INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (35,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (36,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (37,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (38,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (39,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (40,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (41,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (42,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (43,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (44,1);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (45,1);

-- -- -- Tallas mujeres

INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (29,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (30,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (31,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (32,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (33,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (34,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (35,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (36,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (37,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (38,2);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (39,2);

-- -- -- Tallas de niña

INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (1,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (2,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (3,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (4,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (5,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (6,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (7,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (8,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (9,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (10,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (11,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (12,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (13,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (14,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (15,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (16,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (17,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (18,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (19,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (20,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (21,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (22,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (23,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (24,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (25,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (26,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (27,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (28,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (29,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (30,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (31,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (32,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (33,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (34,3);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (35,3);

-- -- -- Tallas de niño

INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (1,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (2,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (3,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (4,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (5,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (6,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (7,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (8,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (9,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (10,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (11,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (12,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (13,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (14,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (15,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (16,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (17,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (18,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (19,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (20,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (21,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (22,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (23,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (24,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (25,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (26,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (27,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (28,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (29,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (30,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (31,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (32,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (33,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (34,4);
INSERT INTO `RelacionTalla` (tallaRelacion, categoriaRelacion) VALUES (35,4);


-- -- -- Revisar relación entre Categoría y Talla

Select Categoria.nombreCategoria, Talla.numeroTalla
from Categoria
inner join RelacionTalla
on RelacionTalla.categoriaRelacion = Categoria.idCategoria
inner join Talla
on RelacionTalla.tallaRelacion = Talla.idTallas;