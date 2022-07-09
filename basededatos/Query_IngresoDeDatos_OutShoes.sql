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

-- Usuarios
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("tyron@outshoes.com", "papitas123", "Tyron", "Vergara", "Guerra", "Enrique Segoviano, 8", "Departamento 8", "Ciudad de México", "Azcapotzalco", "02100", 1); 
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("daniela@outshoes.com", "morado321", "Daniela", "Moreno", "Pérez", "Primera Avenida 12", "Edificio 2", "Tamaulipas", "Tampico", "89300", 1);
INSERT INTO `usuario` (correo, contrasena, nombre, apellidop, apellidom, direccionuno, direcciondos, estado, ciudad, cp, Tipo_id) VALUES ("hector@outshoes.com", "Pa$$w0rd987", "Héctor", "Zamora", "Bringas", "Donceles 815", "planta baja", "Ciudad de México", "Cuauhtemoc", "06000", 1);

INSERT INTO `inventario` (talla, cantidad) VALUES (1, 10);

select * from marca

INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('ADD2007', 'Tenis Adidas para Hombre GZ5306 Blanco', 'TENIS ADVANTAGE LOS SIMPSONS TENIS CON UN CORTE MODERNO Y ESTILO VINTAGE. Inyéctale un poco de energía vintage a tu estilo moderno con estos tenis adidas. Inspirados en el calzado clásico de tenis, el exterior textil y la suela de caucho ofrecen comodidad con cada paso y un estilo retro único. Los estampados que rinden homenaje a la familia disfuncional favorita de la televisión, los Simpsons, les imprime un toque de modernidad.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/b5c3b836-e56e-4abb-8809-5b8985bf7280_500x.png?v=1656851129', '1599', 1, 4, 1, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('EFE1001', 'Zapatillas Efe para Mujer 228201 Plateado', 'Zapatilla con tiras delgadas con detalles de estoperoles a tono. Cuenta con tira en tobillo ajustable con hebilla.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/1a57cede-23b6-4ab7-8a31-5532c6bab520_1600x.png?v=1656968360', '739', 2, 5, 5, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('LEV149', 'Bota Casual Levis para Hombre L211332 Cafe', 'Bota urbana con estilo atemporal fabricada en piel cuyo acabado rústico lo hace ideal para lograr un look casual, te recomendamos usarlos con tus Levi´s 511™', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/d0da6742-89fd-4d96-99ea-e2a721e13007_500x.png?v=1656937512', '1599', 1, 1, 9, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('LEM9', 'Pantuflas Lenmarq para Niña 3005 Beige', 'Hermosas Pantuflas Lenmarq para niña color maquillaje, tu pequeña será la envidia de todas con estas excelentes pantuflas.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/6d887aac-0af1-4a74-a40e-3d4c6c2eca4a_500x.png?v=1656926846', '320', 3, 2, 8, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('NIK2349', 'Sandalias Nike para Niño 819352-001 Negro', 'La chancla Nike Kawa es son superfáciles de ponerse en cualquier momento. Con un diseño suave y flexible, estas sandalias ayudan a los pies en crecimiento a recuperarse después de la práctica, el juego o cualquier aventura (como un día en la playa).', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/468703bf-6d05-4ef0-8318-a41df3c78fbe_500x.png?v=1656978549', '599', 4, 3, 10, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('CVR14', 'Tenis Converse para Hombre 7650 Blanco', 'Necesitas un estilo infalible. El Chuck Taylor All-Star es un elemento esencial: el perfil alto y el estilo oxford brindan una apariencia verdaderamente clásica, a la vez que los cordones blancos y el parche de estrella en el tobillo rinden homenaje al legado del Chuck. Este es el calzado que combina con todo que no te cansarás de usar.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/da10c780-2440-4f0a-99d0-bb33075ec25d_700x.png?v=1656965754', '1299', 1, 4, 2, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('PLT227', 'Botín Perez lete para Mujer 33191 Negro ', 'Hermosa bota Perez Lete con Corte Sintetico en Charol Negro. Este calzado te hará ver de maravilla a donde quiera que vayas. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/dc9eca69-1a53-4349-b357-97597cd9b5d3_700x.png?v=1656912831', '1299', 2, 1, 12, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('SES4', 'Pantuflas Sesamo para Niño 93200-1-C Azul ', 'Los pies siempre estarán calientitos con la nuevas pantuflas modelo Peluche de Sésamo. Están elaboradas en suave textil. Su suela es ligera y súper acojinada. Están personalizadas con el Come Galletas. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/4b49878f-0f44-4267-9412-f9ce4ee43fe2_700x.png?v=1656926145', '329', 4, 2, 14, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('TRO1201', 'Sandalias Tropicana para Niña 19036 Rosa ', 'Sandalias con adorable estampado de conejito, resorte ajustable a los piesitos de tu pequeña, suela ligera; antiderrapante, hecho de material de alta calidad. Que tu niña lleve la magia a todos lados. Fácil de combinar con diversos outfits para a si lucir linda y a la moda. Perfecta para el uso diario Cómoda para vivir una experiencia agradable, fácil de quitar y llevar a todos lados. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/04833a41-de5e-49e4-9960-d2e0d59058da_700x.png?v=1656929565', '289', 3, 3, 15, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('DCK68', 'Zapato de Vestir Dockers para Hombre D219571 Negro', 'Luce pulcro y elegante con estos zapatos para caballero de Dockers, Un clásico en negro con agujetas ajustables para mayor seguridad. Ideal para combinarlos con estilos formales. Siéntete increíble y deslumbra en cualquier evento importante con tus Dockers. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/zapato-de-vestir-dockers-para-hombre-d219571-negro-dck68-divisioncalzado-dockers-negro-27-172240_700x.jpg?v=1656874858', '1369', 1, 6, 4, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('ADD1802', 'Tenis Adidas para Hombre FX3593 Negr', 'TENIS CORERACER TENIS DE RUNNING LIVIANOS PARA UNA TOTAL COMODIDAD Los tenis adidas Coreracer ofrecen la combinación perfecta de sujeción para running y estilo urbano. Son livianos y transpirables para mantener tus pies cómodos en todo momento. Lucen un logo adidas Badge of Sport que le pone el toque final al look de alto rendimiento.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/7460d4d2-1b15-4367-b8b7-4dbfd3c86ec2_1600x.png?v=1657008936', '1199', 1, 4, 1, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('DCK99', 'Bota Casual Dockers para Hombre D221624 Cafe ', 'Bota para caballero 100% original moderna y elegante, su estilo elegante y vanguardista la convierten en el calzado ideal para vestir a la moda con comodidad debido a su interior acojinado, suela antideslizante.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/6f2be985-b93c-46c2-8335-ad0d7013d531_500x.png?v=1657009655', '1399', 1, 1, 4, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('NIK2466', 'Tenis Nike para Mujer CQ9545-014 Violeta oscuro ', 'El Nike Legend Essential 2 viene equipado con un talón plano y estable, flexibilidad debajo de la punta y soporte de lado a lado. Gracias a su gran agarre, puedes hacer levantamientos, entrenamientos de alta intensidad, conquistar una clase o fortalecerte en las máquinas.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/d87d993f-dd13-4edf-afd7-b69d15b6c4a6_500x.png?v=1657026763', '1349', 2, 4, 10, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('DNY29', 'Tenis Disney para Niña 73043 Blanco', 'Estos Hermosos Tenis son perfectos para tu pequeños con sus personajes favoritos de Minnie Mouse. Quedarán Asombrados.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/debdcfed-dfa5-4507-b866-cc00b8017666_500x.png?v=1656978545', '599', 3, 4, 3, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('RDI5', 'Bota Ruditos para Niño 2800 Cafe ', 'Para que tu pequeño luzca a la moda estos Zapatos Botín en color café son los indicados. Su diseño de ajuste de cintas y son la combinación perfecta para combinar con infinidad de atuendos a la moda y lucir super ligero y confiable a la hora de caminar.', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/92e9c512-42f5-4f7f-b971-fbdfc6c24fcf_500x.png?v=1657005522', '409', 4, 1, 13, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('GNS95', 'Zapatillas para Mujer 10562 Negro', 'Hermosa zapatilla con un diseño único que te hará lucir fabulosa en todo momento. Su diseño de abertura y elegante moño en la parte del empeine, le añaden un toque único y fashionista. La altura de su tacón es perfecto para hacerte lucir más estilizada. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/93fd832f-4224-4288-852c-87268c5f249b_500x.png?v=1656992210', '499', 2, 5, 6, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('DCK89', 'Bota Casual para Hombre D211612', 'La tradición y herencia artesanal conjugadas en un look casual hecho zapato. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/87a42508-2b38-44ad-ba4f-ee650c2353ea_500x.png?v=1656937139', '1699', 1, 1, 4, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('PAU806', 'Bota Paulina para Mujer 84218', 'Bota adecuadas para todas las mujeres de la casa. No pueden faltar en tu guardarropa de esta temporada. Bota de gamusin con suela antiderrapante ideales para verte bien esta temporada. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/9a117993-221c-4623-b917-7d8b2423eb34_500x.png?v=1656972944', '659', 2, 1, 11, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('TRO1036', 'Flats Tropicana para Niña 31761', 'Hermosa ballerina en color Rosa para tu pequeña, con adorable moño al frente que añade un toque divertido a su estilo.Hecha de material sintético en acabado mate, con tira elástica ajustable y fácil de quitar y llevar a todos lados, cuenta con suela ligera y antiderrapante. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/693ac8e2-992c-4535-9c47-8ca3ba119f65_500x.png?v=1657020655', '259', 3, 6, 15, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('RDI7', 'Zapato Casual para Niño 2602', 'Para que tu pequeño luzca a la moda estos Zapatos en color café son los indicados. Su diseño de ajuste de cintas y son la combinación perfecta para combinar con infinidad de atuendos a la moda y lucir super ligero y confiable a la hora de caminar. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/ba54f0be-be12-49c0-9edf-9e1b3e0d5019_500x.png?v=1657007483', '399', 4, 6, 13, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('ADD1965', 'Sandalias Adidas para Niña FY8072 Rosa', 'SANDALIAS ADILETTE AQUA SANDALIAS SUAVES PARA EL AGUA Destaca su amor por adidas con estas sandalias adidas. Su diseño con banda superior de una sola pieza moldeada y las 3 Franjas es perfecta para la ducha o antes y después de la alberca. La plantilla supersuave es de secado rápido para mantener sus pies cómodos en todo momento. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/a615b937-f566-4d81-9dca-3e0ad471ba6f_500x.png?v=1656993820', '499', 3, 3, 1, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('GOS898', 'Bota Gosh para Niña 14353-01 Rosa ', 'Este hermoso botín color rosa hará lucir increíble a tu niña y harás notar su presencia en cualquier lugar. le darán esa comodidad que necesita al caminar, además que sus cintas son perfectas para ajustarse perfecto a tu pie. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/d2b6b8fc-6016-4680-9e4a-1216f4cb6f22_500x.png?v=1657003199', '429', 3, 1, 7, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('ADD2007', 'Tenis Adidas para Hombre GZ5306 Blanco ', 'TENIS ADVANTAGE LOS SIMPSONS TENIS CON UN CORTE MODERNO Y ESTILO VINTAGE. Inyéctale un poco de energía vintage a tu estilo moderno con estos tenis adidas. Inspirados en el calzado clásico de tenis, el exterior textil y la suela de caucho ofrecen comodidad con cada paso y un estilo retro único. Los estampados que rinden homenaje a la familia disfuncional favorita de la televisión, los Simpsons, les imprime un toque de modernidad. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/b5c3b836-e56e-4abb-8809-5b8985bf7280_500x.png?v=1656851129', '1599', 1, 4, 1, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('CVR5', 'Tenis Converse para Mujer 9166 Negro ', 'Necesitas un estilo infalible. El Chuck Taylor All-Star es un elemento esencial: el perfil alto y el estilo oxford brindan una apariencia verdaderamente clásica, a la vez que los cordones blancos y el parche de estrella en el tobillo rinden homenaje al legado del Chuck. Este es el calzado que combina con todo que no te cansarás de usar. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/tenis-converse-para-mujer-9166-negro-cvr5-divisioncalzado-converse-381808_500x.jpg?v=1641296900', '1249', 2, 4, 2, 1);
INSERT INTO producto (sku, nombre, descripcion, imagen, precio, Categoria_id, Coleccion_id, Marca_id, Inventario_id) VALUES ('ADD2082', 'Tenis Adidas para Niña GY5438 Blanco ', 'El día de los niños está lleno de actividades, por lo que necesitan un calzado que pueda seguir su ritmo. Estos tenis adidas para niños están inspirados en el clásico estilo tenístico. Incorporan tres tiras ajustables de cierre por contacto sobre un exterior de piel sintética para una sensación de sujeción y máxima comodidad. Los estampados en el exterior le permiten llevar a sus personajes favoritos de la película Frozen de Disney adondequiera que vaya. ', 'https://cdn.shopify.com/s/files/1/0031/3271/9173/products/a434a259-e1a3-42f1-8c77-ad5a106f86bf_6912a64a-dc9a-45d7-a515-0f8e23f64c02_500x.png?v=1657031813', '999', 3, 4, 1, 1);