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


-- Usuarios
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("tyron@outshoes.com", "papitas123", "Tyron", "Vergara", "Guerra", "Enrique Segoviano, 8", "Departamento 8", "Ciudad de México", "Azcapotzalco", "02100", 1); 
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("daniela@outshoes.com", "morado321", "Daniela", "Moreno", "Pérez", "Primera Avenida 12", "Edificio 2", "Tamaulipas", "Tampico", "89300", 1);
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("hector@outshoes.com", "Pa$$w0rd987", "Héctor", "Zamora", "Bringas", "Donceles 815", "Planta baja", "Ciudad de México", "Cuauhtemoc", "06000", 1);
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("gabo@outshoes.com", "paola08", "Gabriel", "Malacara", "Roman", "Condesa de Coslada 144", "La Condesa", "Guanajuato", "León", "37440", 1);
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("antonio@outshoes.com", "amotecamac@", "Antonio", "Jorge", "Bonilla", "Aureliano Rivera 26", "Privada Girasoles", "Estado de México", "Tecamac", "01000", 1);


-- Productos

INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('ADD2007', 'Tenis Adidas para Hombre GZ5306 Blanco', 'TENIS ADVANTAGE LOS SIMPSONS TENIS CON UN CORTE MODERNO Y ESTILO VINTAGE. Inyéctale un poco de energía vintage a tu estilo moderno con estos tenis adidas. Inspirados en el calzado clásico de tenis, el exterior textil y la suela de caucho ofrecen comodidad con cada paso y un estilo retro único. Los estampados que rinden homenaje a la familia disfuncional favorita de la televisión, los Simpsons, les imprime un toque de modernidad.', './img/item/1.webp', '1599',25.5,1, 4, 1);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('EFE1001', 'Zapatillas Efe para Mujer 228201 Plateado', 'Zapatilla con tiras delgadas con detalles de estoperoles a tono. Cuenta con tira en tobillo ajustable con hebilla.', './img/item/2.webp', '739',22.5,2, 5, 5);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('LEV149', 'Bota Casual Levis para Hombre L211332 Cafe', 'Bota urbana con estilo atemporal fabricada en piel cuyo acabado rústico lo hace ideal para lograr un look casual, te recomendamos usarlos con tus Levi´s 511™', './img/item/3.webp', '1599',28,1, 1, 9);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('LEM9', 'Pantuflas Lenmarq para Niña 3005 Beige', 'Hermosas Pantuflas Lenmarq para niña color maquillaje, tu pequeña será la envidia de todas con estas excelentes pantuflas.', './img/item/4.webp', '320',16,3, 2, 8);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('NIK2349', 'Sandalias Nike para Niño 819352-001 Negro', 'La chancla Nike Kawa es son superfáciles de ponerse en cualquier momento. Con un diseño suave y flexible, estas sandalias ayudan a los pies en crecimiento a recuperarse después de la práctica, el juego o cualquier aventura (como un día en la playa).', './img/item/5.webp', '599',20.5,4, 3, 10);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('CVR14', 'Tenis Converse para Hombre 7650 Blanco', 'Necesitas un estilo infalible. El Chuck Taylor All-Star es un elemento esencial: el perfil alto y el estilo oxford brindan una apariencia verdaderamente clásica, a la vez que los cordones blancos y el parche de estrella en el tobillo rinden homenaje al legado del Chuck. Este es el calzado que combina con todo que no te cansarás de usar.', './img/item/6.webp', '1299',23.5,1, 4, 2);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('PLT227', 'Botín Perez lete para Mujer 33191 Negro ', 'Hermosa bota Perez Lete con Corte Sintetico en Charol Negro. Este calzado te hará ver de maravilla a donde quiera que vayas. ', './img/item/7.webp', '1299',24,2, 1, 12);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('SES4', 'Pantuflas Sesamo para Niño 93200-1-C Azul ', 'Los pies siempre estarán calientitos con la nuevas pantuflas modelo Peluche de Sésamo. Están elaboradas en suave textil. Su suela es ligera y súper acojinada. Están personalizadas con el Come Galletas. ', './img/item/8.webp', '329',27,4, 2, 14);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('TRO1201', 'Sandalias Tropicana para Niña 19036 Rosa ', 'Sandalias con adorable estampado de conejito, resorte ajustable a los piesitos de tu pequeña, suela ligera; antiderrapante, hecho de material de alta calidad. Que tu niña lleve la magia a todos lados. Fácil de combinar con diversos outfits para a si lucir linda y a la moda. Perfecta para el uso diario Cómoda para vivir una experiencia agradable, fácil de quitar y llevar a todos lados. ', './img/item/9.webp', '289',19.5,3, 3, 15);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('DCK68', 'Zapato de Vestir Dockers para Hombre D219571 Negro', 'Luce pulcro y elegante con estos zapatos para caballero de Dockers, Un clásico en negro con agujetas ajustables para mayor seguridad. Ideal para combinarlos con estilos formales. Siéntete increíble y deslumbra en cualquier evento importante con tus Dockers. ', './img/item/10.webp', '1369',14,1, 6, 4);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('ADD1802', 'Tenis Adidas para Hombre FX3593 Negr', 'TENIS CORERACER TENIS DE RUNNING LIVIANOS PARA UNA TOTAL COMODIDAD Los tenis adidas Coreracer ofrecen la combinación perfecta de sujeción para running y estilo urbano. Son livianos y transpirables para mantener tus pies cómodos en todo momento. Lucen un logo adidas Badge of Sport que le pone el toque final al look de alto rendimiento.', './img/item/11.webp', '1199',28,1, 4, 1);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('DCK99', 'Bota Casual Dockers para Hombre D221624 Cafe ', 'Bota para caballero 100% original moderna y elegante, su estilo elegante y vanguardista la convierten en el calzado ideal para vestir a la moda con comodidad debido a su interior acojinado, suela antideslizante.', './img/item/12.webp', '1399',27,1, 1, 4);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('NIK2466', 'Tenis Nike para Mujer CQ9545-014 Violeta oscuro ', 'El Nike Legend Essential 2 viene equipado con un talón plano y estable, flexibilidad debajo de la punta y soporte de lado a lado. Gracias a su gran agarre, puedes hacer levantamientos, entrenamientos de alta intensidad, conquistar una clase o fortalecerte en las máquinas.', './img/item/13.webp', '1349',24,2, 4, 10);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('DNY29', 'Tenis Disney para Niña 73043 Blanco', 'Estos Hermosos Tenis son perfectos para tu pequeños con sus personajes favoritos de Minnie Mouse. Quedarán Asombrados.', './img/item/14.webp', '599',11,3, 4, 3);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('RDI5', 'Bota Ruditos para Niño 2800 Cafe ', 'Para que tu pequeño luzca a la moda estos Zapatos Botín en color café son los indicados. Su diseño de ajuste de cintas y son la combinación perfecta para combinar con infinidad de atuendos a la moda y lucir super ligero y confiable a la hora de caminar.', './img/item/15.webp', '409',9,4, 1, 13);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('GNS95', 'Zapatillas para Mujer 10562 Negro', 'Hermosa zapatilla con un diseño único que te hará lucir fabulosa en todo momento. Su diseño de abertura y elegante moño en la parte del empeine, le añaden un toque único y fashionista. La altura de su tacón es perfecto para hacerte lucir más estilizada. ', './img/item/16.webp', '499',15,2, 5, 6);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('DCK89', 'Bota Casual para Hombre D211612', 'La tradición y herencia artesanal conjugadas en un look casual hecho zapato. ', './img/item/17.webp', '1699',8,1, 1, 4);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('PAU806', 'Bota Paulina para Mujer 84218', 'Bota adecuadas para todas las mujeres de la casa. No pueden faltar en tu guardarropa de esta temporada. Bota de gamusin con suela antiderrapante ideales para verte bien esta temporada. ', './img/item/18.webp', '659',27,2, 1, 11);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('TRO1036', 'Flats Tropicana para Niña 31761', 'Hermosa ballerina en color Rosa para tu pequeña, con adorable moño al frente que añade un toque divertido a su estilo.Hecha de material sintético en acabado mate, con tira elástica ajustable y fácil de quitar y llevar a todos lados, cuenta con suela ligera y antiderrapante. ', './img/item/19.webp', '259',14,3, 6, 15);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('RDI7', 'Zapato Casual para Niño 2602', 'Para que tu pequeño luzca a la moda estos Zapatos en color café son los indicados. Su diseño de ajuste de cintas y son la combinación perfecta para combinar con infinidad de atuendos a la moda y lucir super ligero y confiable a la hora de caminar. ', './img/item/20.webp', '399',13,4, 6, 13);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('ADD1965', 'Sandalias Adidas para Niña FY8072 Rosa', 'SANDALIAS ADILETTE AQUA SANDALIAS SUAVES PARA EL AGUA Destaca su amor por adidas con estas sandalias adidas. Su diseño con banda superior de una sola pieza moldeada y las 3 Franjas es perfecta para la ducha o antes y después de la alberca. La plantilla supersuave es de secado rápido para mantener sus pies cómodos en todo momento. ', './img/item/21.webp', '499',16,3, 3, 1);
INSERT INTO `producto` (sku, nombre, descripcion, imagen, precio, talla, Categoria_id, Coleccion_id, Marca_id) VALUES ('GOS898', 'Bota Gosh para Niña 14353-01 Rosa ', 'Este hermoso botín color rosa hará lucir increíble a tu niña y harás notar su presencia en cualquier lugar. le darán esa comodidad que necesita al caminar, además que sus cintas son perfectas para ajustarse perfecto a tu pie. ', './img/item/22.webp', '429',28,3, 1, 7);
