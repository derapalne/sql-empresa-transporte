USE transporte;

-- tabla USUARIO
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario) 
VALUES ("Ranty", "Fuso", "16459852", "rfuso66@boniato.com", "mSYkl9TwHk", "+5491145786598");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Cusi", "Fai", "16458875", "cusiman@boniato.com", "nufzUJzf5Y", "+5491165322154");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Pocho", "Martinez", "3245987", "pepe.fernandez@boniato.com", "D27rYYNKOA", "+5491178458956");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Carr", "Ucha", "14585579", "gcarucha@boniato.com", "nqCPuPwsAe", "+5491132215498");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Yuno", "Kalo", "6486422", "ykalo18@boniato.com", "YwFcrijXWx", "+5491178561245");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Ponz", "Oña", "69998523", "pferro@boniato.com", "In4qslpUmv", "+5491175531559");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Maria", "Abraldez", "10521976", "mabra@boniato.com", "xmHi5p8HZp", "+5491191234545");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Marcelo", "Konnia", "95079925", "konniamarcelo@boniato.com", "gjsy0i5gNn", "+5491112242381");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Karina", "Ucha", "71043636", "kucha@boniato.com", "SETbcl5ZAa", "+5491173505044");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("JuanPedro", "Gonzalez", "66622887", "juanpiiiii@boniato.com", "b4cIYnWjzS", "+5491167008932");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Alba", "Nimbre", "23068158", "sraalba@boniato.com", "sVbwQiyfT2", "+5491124976451");
INSERT INTO usuario (nombre_usuario, apellido_usuario, dni_usuario, email_usuario, password_usuario, telefono_usuario)
VALUES ("Jose", "Rodriguez", "80954971", "josepsicologia@boniato.com", "eleNzRr6Kc", "+5491163448093");


-- tabla ESTACION
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion)
VALUES ("Pueblo Paleta", "Distribuidora Robles SRL", "Boulevard Tomate 144", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion)
VALUES ("Ciudad Carmín", "Centro de Recolección del Ejército", "Calle Hombrep 1030", "REPARACION");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion)
VALUES ("Ciudad Fucsia", "EL JAPONÉS", "Avenida Safari 577", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion)
VALUES ("Ciudad Celeste", "Nieblas SA", "Calle Estrella 555", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion)
VALUES ("Pueblo Lavanda", "El Cuervo", "Calle Lápida 1759", "CLAUSURADA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Plateada", "LA ROCA SRL", "Calle Georges 399", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Verde", "El Aguila del Oeste", "Avenida Maratón 460", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Azulona", "AzuCorp", "Avenida Montes 1398", "REPARACION");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Pueblo Canela", "EL JAPONÉS", "Calle Díaz 122", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Villa Raíz", "El Peque Distribuidora", "Calle Azucena 100", "CLAUSURADA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Malvalona", "EL JAPONÉS", "Avenida Eléctrica 2301", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Azulona", "EL JAPONÉS", "Avenida Montes 781", "ACTIVA");
INSERT INTO estacion (ciudad_estacion, nombre_estacion, direccion_estacion, estado_estacion) 
VALUES ("Ciudad Azafrán", "Nieblas SA", "Boulevard Psíquico 542", "ACTIVA");

-- tabla VEHICULO
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (3000.00,"NidoQuin","P0150NUS","ACTIVO",4,0.15);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (4200.00,"MagKargo","C4N-L1FT","ACTIVO",1,0.24);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (500.00,"Kangasolera","G3T-F45T","REPARACION",2,0.09);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (3450.00,"Chansania","L0N6-RUN","ACTIVO",2,0.17);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (3115.00,"Igniturtle","MUCH-W4T","ACTIVO",3,0.14);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (1700.00,"Brelum","UM5T-C4N","REPARACION",12,0.07);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (1700.00,"Brelum","I9D7-R0E","ACTIVO",4,0.07);
INSERT INTO vehiculo (capacidad_vehiculo, modelo_vehiculo, patente_vehiculo, estado_vehiculo, id_estacion_actual, consumo_lt_combustible_km)
VALUES (2275.00,"PrimeRoader","35TD-F0X","ACTIVO",5,0.11);

-- tabla GASTO_VEHICULO
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (1750.00,"Almuerzo empleados","2022-07-11",1);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (3590.00,"Recarga combustible","2022-06-17",2);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (2850.00,"Recarga combustible","2022-04-12",3);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (1207.50,"Almuerzo empleados","2022-05-4",4);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (180000.00,"Cambio de cubiertas","2022-04-19",3);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (250600.00,"Cambio generador mecánico","2022-04-23",3);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (780.00,"Peaje","2022-08-2",2);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (3736.00,"Almuerzo empleados","2022-08-3",8);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (1813.00,"Recarga combustible","2022-08-17",6);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (3651.00,"Recarga combustible","2022-07-2",7);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (19850.00,"Reparacion farol delantero","2022-06-20",5);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (932.00,"Peaje","2022-08-15",4);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (2023.00,"Recarga combustible","2022-05-18",5);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (36950.00,"Revision mecanico","2022-06-14",7);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (2684.00,"Almuerzo empleados","2022-09-20",1);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (2526.00,"Recarga combustible","2022-09-11",2);
INSERT INTO gasto_vehiculo (valor_gasto, descripcion_gasto, fecha_gasto, id_vehiculo)
VALUES (848.00,"Peaje","2022-08-25",3);

-- tabla EMPLEADO
INSERT INTO empleado (dni_empleado, nombre_empleado , apellido_empleado , horario_empleado , sueldo_empleado, id_vehiculo, empleado_conductor) 
VALUES ("64857913","Elena","Morada","06:00-14:00",175030.00,1,true);
INSERT INTO empleado (dni_empleado, nombre_empleado , apellido_empleado , horario_empleado , sueldo_empleado, id_vehiculo, empleado_conductor) 
VALUES ("64329785","Pedro","Bello","06:00-14:00",187600.00,2,true);
INSERT INTO empleado (dni_empleado, nombre_empleado , apellido_empleado , horario_empleado , sueldo_empleado, id_vehiculo, empleado_conductor) 
VALUES ("97278495","Enk","Antador","06:00-14:00",110000.00,2,false);
INSERT INTO empleado (dni_empleado, nombre_empleado , apellido_empleado , horario_empleado , sueldo_empleado, id_vehiculo, empleado_conductor) 
VALUES ("58467519","Honorio","Gentil","22:00-06:00",193700.00,3,true);
INSERT INTO empleado (dni_empleado, nombre_empleado , apellido_empleado , horario_empleado , sueldo_empleado, id_vehiculo, empleado_conductor) 
VALUES ("62518495","James","Taylorson","14:00-22:00",175200.00,4,true);

-- tabla ASISTENCIA_EMPLEADO
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (1,4,"06:01:23","13:58:29","2022-03-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (2,1,"05:55:48","13:52:02","2022-03-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (3,1,"06:04:51","14:00:01","2022-03-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (4,2,"14:00:43","22:03:35","2022-03-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (5,2,"14:06:00","21:57:44","2022-03-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (1,4,"06:03:01","13:59:12","2022-04-12");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (2,1,"05:52:57","13:51:38","2022-04-12");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (3,1,"06:07:21","13:59:44","2022-04-12");
INSERT INTO asistencia_empleado (id_empleado,fecha_asistencia)
VALUES (4,"2022-04-12");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (5,2,"14:01:20","21:59:59","2022-04-12");
INSERT INTO asistencia_empleado (id_empleado,fecha_asistencia)
VALUES (1,"2022-04-17");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (2,1,"05:57:40","13:55:27","2022-04-15");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (3,1,"06:05:14","14:00:04","2022-05-10");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (4,2,"14:01:13","22:02:24","2022-05-02");
INSERT INTO asistencia_empleado (id_empleado,fecha_asistencia)
VALUES (5,"2022-05-02");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (1,4,"06:04:36","13:53:13","2022-07-18");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (2,1,"06:03:52","13:59:50","2022-09-11");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (3,1,"06:04:43","14:00:55","2022-07-23");
INSERT INTO asistencia_empleado (id_empleado,fecha_asistencia)
VALUES (4,"2022-05-16");
INSERT INTO asistencia_empleado (id_empleado,id_estacion,hora_entrada,hora_salida,fecha_asistencia)
VALUES (5,2,"14:05:36","22:03:55","2022-04-28");


-- tabla TRANSPORTE
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (2,1,2,"2022-03-24","2022-03-26");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (8,11,2,"2022-03-27","2022-03-29");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (10,3,3,"2022-03-23","2022-03-25");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (11,13,1,"2022-04-05","2022-04-07");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (13,3,2,"2022-04-01","2022-04-03");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (3,4,4,"2022-05-21","2022-05-23");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (4,2,2,"2022-05-11","2022-05-13");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (4,12,2,"2022-05-11","2022-05-14");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (13,8,5,"2022-05-12","2022-05-14");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (9,6,7,"2022-05-13","2022-05-16");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (5,9,8,"2022-05-14","2022-05-17");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (1,9,4,"2022-05-15","2022-05-17");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (6,7,6,"2022-05-16","2022-05-19");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (7,8,3,"2022-05-16","2022-05-20");


-- tabla PAQUETE
/*
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (3,3,"ENTREGADO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (2,2,"ENTREGADO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (2,2,"ESPERANDO RECEPCION");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (1,1,"EN CAMINO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (5,5,"ENTREGADO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (5,5,"ENTREGADO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (6,6,"ENTREGADO");
INSERT INTO paquete (id_transporte,id_factura,estado_paquete)
VALUES (4,4,"ENTREGADO");
INSERT INTO paquete (estado_paquete)
VALUES (2,4,0.40,"ESPERANDO TRANSPORTE");
*/
-- insercion de paquetes a traves de stored procedures (inserta en varias tablas)
SET @response = '0';
SET @new_id_paquete = 0;
-- CREACION DE PAQUETES
CALL agregar_paquete(1, 0.90, 3, 4, @response, @new_id_paquete);
CALL agregar_paquete(2, 1.20, 10, 3, @response, @new_id_paquete);
CALL agregar_paquete(2, 3.57, 11, 13, @response, @new_id_paquete);
CALL agregar_paquete(3, 2.22, 13, 3, @response, @new_id_paquete);
CALL agregar_paquete(4, 1.05, 7, 8, @response, @new_id_paquete);
CALL agregar_paquete(4, 0.83, 2, 1, @response, @new_id_paquete);
CALL agregar_paquete(5, 0.40, 9, 6, @response, @new_id_paquete);
CALL agregar_paquete(6, 0.05, 4, 2, @response, @new_id_paquete);
CALL agregar_paquete(2, 7.40, 13, 3, @response, @new_id_paquete);
CALL agregar_paquete(7, 12.70, 4, 12, @response, @new_id_paquete);
CALL agregar_paquete(12, 11.23, 4, 12, @response, @new_id_paquete);
CALL agregar_paquete(6, 7.05, 4, 12, @response, @new_id_paquete);
CALL agregar_paquete(3, 12.70, 13, 8, @response, @new_id_paquete);
CALL agregar_paquete(5, 1.51, 13, 8, @response, @new_id_paquete);
CALL agregar_paquete(8, 3.75, 5, 9, @response, @new_id_paquete);
CALL agregar_paquete(4, 4.52, 5, 9, @response, @new_id_paquete);
CALL agregar_paquete(3, 0.78, 8, 11, @response, @new_id_paquete);
CALL agregar_paquete(6, 9.60, 13, 3, @response, @new_id_paquete);
CALL agregar_paquete(11, 15.45, 1, 9, @response, @new_id_paquete);
CALL agregar_paquete(9, 13.09, 6, 7, @response, @new_id_paquete);
CALL agregar_paquete(9, 6.00, 6, 7, @response, @new_id_paquete);
CALL agregar_paquete(9, 3.50, 6, 7, @response, @new_id_paquete);
-- MODIFICACION DEL ESTADO
CALL modificar_estado_paquete(1,"ESPERANDO RECEPCION",@response);
CALL modificar_estado_paquete(2,"EN CAMINO",@response);
CALL modificar_estado_paquete(3,"DEMORADO",@response);
CALL modificar_estado_paquete(4,"ENTREGADO",@response);
CALL modificar_estado_paquete(5,"ENTREGADO",@response);
CALL modificar_estado_paquete(7,"DEMORADO",@response);
CALL modificar_estado_paquete(8,"ENTREGADO",@response);
CALL modificar_estado_paquete(9,"ENTREGADO",@response);
CALL modificar_estado_paquete(10,"ESPERANDO RECEPCION",@response);
CALL modificar_estado_paquete(11,"ESPERANDO RECEPCION",@response);
CALL modificar_estado_paquete(12,"ESPERANDO RECEPCION",@response);
CALL modificar_estado_paquete(13,"DEMORADO",@response);
CALL modificar_estado_paquete(14,"DEMORADO",@response);
CALL modificar_estado_paquete(15,"EN CAMINO",@response);
CALL modificar_estado_paquete(17,"EN CAMINO",@response);
CALL modificar_estado_paquete(18,"ENTREGADO",@response);
CALL modificar_estado_paquete(20,"ENTREGADO",@response);
CALL modificar_estado_paquete(21,"ENTREGADO",@response);
CALL modificar_estado_paquete(22,"ENTREGADO",@response);
-- SE AGREGAN LOS ATRIBUTOS FALTANTES A LOS PAQUETES
CALL agregar_datos_a_paquete(1, 4, 6, 0, '2023-11-16', '2023-11-19', @response);
CALL agregar_datos_a_paquete(2, 5, 3, 0, '2023-11-17', '2023-11-20', @response);
CALL agregar_datos_a_paquete(3, 8, 4, 0, '2023-11-12', '2023-11-15', @response);
CALL agregar_datos_a_paquete(4, 2, 5, 0, '2023-11-14', '2023-11-16', @response);
CALL agregar_datos_a_paquete(5, 11, 14, 0, '2023-11-05', '2023-11-07', @response);
CALL agregar_datos_a_paquete(6, 9, 1, 0, '2023-11-04', '2023-11-10', @response);
CALL agregar_datos_a_paquete(7, 1, 10, 0, '2023-11-11', '2023-11-13', @response);
CALL agregar_datos_a_paquete(8, 2, 7, 0, '2023-11-12', '2023-11-14', @response);
CALL agregar_datos_a_paquete(9, 8, 5, 0, '2023-11-17', '2023-11-19', @response);
CALL agregar_datos_a_paquete(10, 5, 8, 0, '2023-11-15', '2023-11-17', @response);
CALL agregar_datos_a_paquete(11, 6, 8, 0, '2023-11-16', '2023-11-19', @response);
CALL agregar_datos_a_paquete(12, 7, 8, 0, '2023-11-17', '2023-11-20', @response);
CALL agregar_datos_a_paquete(13, 8, 9, 0, '2023-11-12', '2023-11-15', @response);
CALL agregar_datos_a_paquete(14, 9, 9, 0, '2023-11-14', '2023-11-16', @response);
CALL agregar_datos_a_paquete(15, 10, 11, 0, '2023-11-05', '2023-11-07', @response);
CALL agregar_datos_a_paquete(16, 11, 11, 0, '2023-11-04', '2023-11-10', @response);
CALL agregar_datos_a_paquete(17, 2, 2, 0, '2023-11-11', '2023-11-13', @response);
CALL agregar_datos_a_paquete(18, 3, 5, 0, '2023-11-12', '2023-11-14', @response);
CALL agregar_datos_a_paquete(19, 4, 12, 0, '2023-11-17', '2023-11-19', @response);
CALL agregar_datos_a_paquete(20, 6, 13, 0, '2023-11-18', '2023-11-21', @response);
CALL agregar_datos_a_paquete(21, 6, 13, 0, '2023-11-18', '2023-11-21', @response);
CALL agregar_datos_a_paquete(22, 6, 13, 0, '2023-11-18', '2023-11-21', @response);

-- CREACION DE FACTURAS
CALL crear_factura(1,6,@response);
CALL crear_factura(2,3,@response);
CALL crear_factura(2,4,@response);
CALL crear_factura(3,5,@response);
CALL crear_factura(4,14,@response);
CALL crear_factura(4,1,@response);
CALL crear_factura(5,10,@response);
CALL crear_factura(6,7,@response);
CALL crear_factura(2,5,@response);
CALL crear_factura(7,8,@response);
CALL crear_factura(12,8,@response);
CALL crear_factura(6,8,@response);
CALL crear_factura(3,9,@response);
CALL crear_factura(5,9,@response);
CALL crear_factura(8,11,@response);
CALL crear_factura(4,11,@response);
CALL crear_factura(6,5,@response);
CALL crear_factura(3,5,@response);
CALL crear_factura(9,13,@response);

-- ACTUALIZACION DE ESTADO DE LAS FACTURAS

CALL modificar_estado_factura(1, "PAGA", @response);
CALL modificar_estado_factura(3, "CANCELADA", @response);
CALL modificar_estado_factura(4, "PAGA", @response);
CALL modificar_estado_factura(6, "PAGA", @response);
CALL modificar_estado_factura(7, "PAGA", @response);
CALL modificar_estado_factura(8, "CANCELADA", @response);
CALL modificar_estado_factura(10, "PAGA", @response);
CALL modificar_estado_factura(11, "PAGA", @response);
CALL modificar_estado_factura(12, "PAGA", @response);
CALL modificar_estado_factura(14, "PAGA", @response);
CALL modificar_estado_factura(16, "PAGA", @response);
CALL modificar_estado_factura(17, "PAGA", @response);

-- calificacion usuario

INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (1, 4, "Muy buen servicio. Un poco feo el empleado nomás", "2023-11-14");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (3, 2, "Me rompieron el paquete y el empleado tenia tatuajes horribles y asquerosos", "2023-11-10");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (4, 1, "No puedo creer que exista una empresa así de desfachatada", "2023-11-09");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (6, 5, "Volvere a utilizar el servisio regularmente muchas gracias", "2023-11-17");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (7, 5, "Llego el paquete en perfecto estado", "2023-11-16");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (8, 4, "", "2023-11-14");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (9, 3, "Muy caro", "2023-11-15");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (10, 3, "", "2023-11-12");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (11, 4, "Se demoraron pero llego bien", "2023-11-10");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (12, 5, "Excelente servicio", "2023-11-11");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (2, 1, "Horrible atencion en la estacion", "2023-11-16");
INSERT INTO calificacion_usuario (id_usuario, puntuacion, comentario, fecha_calificacion)
VALUES (5, 5, "", "2023-11-14");
