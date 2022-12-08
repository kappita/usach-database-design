INSERT INTO usuario(correo, clave, nombre, direccion, edad, is_admin) VALUES('sinoro9117@xegge.com', '12345', 'Alejandra', 'Angol', 30, true);
INSERT INTO usuario(correo, clave, nombre, direccion, edad) VALUES('horse111@madigae.cl', '6789', 'Pedro', 'La serena', 19);
INSERT INTO usuario(correo, clave, nombre, direccion, edad) VALUES('juaniquilador@gmail.com', '9876', 'Juan', 'Pudahuel', 31);
INSERT INTO usuario(correo, clave, nombre, direccion, edad, is_admin) VALUES('diegogo123@madigae.cl', '54321', 'Diego', 'Providencia', 23, true);
INSERT INTO usuario(correo, clave, nombre, direccion, edad, is_admin) VALUES('camilanga@hotmail.cl', '17935', 'Camila', 'La serena', 24, true);

INSERT INTO empresa(correo, clave, nombre, direccion, restriccion_edad) VALUES('morningstar@gmail.com', 'estrelladelamañana123', 'Estrella de la mañana', 'Avenida siempre viva 742', false);
INSERT INTO empresa(correo, clave, nombre, direccion, restriccion_edad) VALUES('troileffetricrau-8353@yopmail.com', 'chino245', 'Mall chino', 'China', false);
INSERT INTO empresa(correo, clave, nombre, direccion, restriccion_edad) VALUES('faloibummecreu-5602@yopmail.com', 'carro43', 'Jugueteria de Barbara', 'Peru', false);
INSERT INTO empresa(correo, clave, nombre, direccion, restriccion_edad) VALUES('marverDC@gmail.com', 'ironman345', 'Marvel', 'USA', true);
INSERT INTO empresa(correo, clave, nombre, direccion, restriccion_edad) VALUES('mcqueen@kuchau.com', 'fiau45', 'CARS', 'Japon', true);

INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Estrella roja', 15000, 666, 'www.estrelladelamañana.com/estrella-roja-1500-666', 1);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Max steel', 10000, 2000, 'www.jugueteriadebarbara.com/max-steel-10000-2000', 3);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Autito de franchesco', 8000, 38, 'www.CARS.com/autito-de-franchesco-8000-38', 5);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Gorro chino', 14000, 123, 'www.mallchino.com/gorro-chino-14000-123', 2);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Iron man', 35500, 777, 'www.marvel.com/iron-man-35500-777', 4);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Hulk', 20000, 500, 'www.marvel.com/hulk-20000-500', 4);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Estrella azul', 18000, 333, 'www.estrelladelamañana.com/estrella-azul-1500-666', 1);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Autito de mcqueen', 30000, 10, 'www.cars.com/autito-de-mcqueen-30000-10', 5);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Barbie', 22000, 20, 'www.jugueteriadebarbara.com/barbie-22000-20', 3);
INSERT INTO producto(nombre, precio, stock, url, id_empresa) VALUES('Palo chino', 22500, 100, 'www.mallchino.com/palo-chino-22500-100', 2);

INSERT INTO metodocompra(nombre_metodo, tipo_pago, tipo_cambio) VALUES('Efectivo', 'Presencial', 'Efectivo');
INSERT INTO metodocompra(nombre_metodo, tipo_pago, tipo_cambio) VALUES('Mastercard', 'Online', 'Digital');
INSERT INTO metodocompra(nombre_metodo, tipo_pago, tipo_cambio) VALUES('Redcompra', 'Online', 'Digital');
INSERT INTO metodocompra(nombre_metodo, tipo_pago, tipo_cambio) VALUES('Efectivo', 'Presencial', 'Efectivo');
INSERT INTO metodocompra(nombre_metodo, tipo_pago, tipo_cambio) VALUES('Visa', 'Online', 'Digital');

INSERT INTO carrito(id_user) VALUES(5);
INSERT INTO carrito(id_user) VALUES(4);
INSERT INTO carrito(id_user) VALUES(3);
INSERT INTO carrito(id_user) VALUES(2);
INSERT INTO carrito(id_user) VALUES(1);

INSERT INTO transaccion(id_metodo, monto, fecha, id_carrito) VALUES(4, 10300, '2022-01-02 03:40:30'::date, 5);
INSERT INTO transaccion(id_metodo, monto, fecha, id_carrito) VALUES(2, 22000, '2022-02-03 3:50:10'::date, 4);
INSERT INTO transaccion(id_metodo, monto, fecha, id_carrito) VALUES(5, 100, '2022-03-04'::date, 3);
INSERT INTO transaccion(id_metodo, monto, fecha, id_carrito) VALUES(1, 45666, '2021-03-04'::date, 2);
INSERT INTO transaccion(id_metodo, monto, fecha, id_carrito) VALUES(3, 50 , '2021-01-01'::date, 1);

INSERT INTO valoracion(id_user, id_empresa, puntuacion, comentario, favorito) VALUES(1, 5, 5, 'Soy muy fan de cars, me encantan sus productos', true);
INSERT INTO valoracion(id_user, id_empresa, puntuacion, comentario, favorito) VALUES(2, 4, 4, 'Me gusta marvel, pero se podría mejorar la calidad', true);
INSERT INTO valoracion(id_user, id_empresa, puntuacion, comentario, favorito) VALUES(3, 3, 3, 'Muy caros sus juguetes', false);
INSERT INTO valoracion(id_user, id_empresa, puntuacion, comentario, favorito) VALUES(4, 2, 4, 'Mala calidad, pero muy lindos productos y buen precio', false);
INSERT INTO valoracion(id_user, id_empresa, puntuacion, comentario, favorito) VALUES(5, 1, 5, 'Me encantan las estrellas, muy buenos productos', true);

INSERT INTO carroproducto(id_carrito, id_producto) VALUES(1, 1);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(2, 2);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(3, 3);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(4, 4);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(5, 5);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(5, 10);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(4, 9);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(3, 8);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(2, 7);
INSERT INTO carroproducto(id_carrito, id_producto) VALUES(1, 6);

INSERT INTO catproducto(nombre) VALUES('Prdoucto chino');
INSERT INTO catproducto(nombre) VALUES('Juguete');
INSERT INTO catproducto(nombre) VALUES('Autito');
INSERT INTO catproducto(nombre) VALUES('Producto Marvel');
INSERT INTO catproducto(nombre) VALUES('Estrella');

INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(1, 4);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(1, 10);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(2, 2);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(2, 9);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(3, 8);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(3, 3);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(4, 5);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(4, 6);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(5, 7);
INSERT INTO catprodprod(id_catproducto, numero_serie) VALUES(5, 1);

INSERT INTO catempresa(tipo_producto) VALUES('Jugueteria');
INSERT INTO catempresa(tipo_producto) VALUES('Tienda de estrella');
INSERT INTO catempresa(tipo_producto) VALUES('Tienda de productos chinos');

INSERT INTO catempemp(id_empresa, id_catempresa) VALUES(1, 2);
INSERT INTO catempemp(id_empresa, id_catempresa) VALUES(2, 3);
INSERT INTO catempemp(id_empresa, id_catempresa) VALUES(3, 1);
INSERT INTO catempemp(id_empresa, id_catempresa) VALUES(4, 1);
INSERT INTO catempemp(id_empresa, id_catempresa) VALUES(5, 1);
