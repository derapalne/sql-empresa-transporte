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
VALUES (1,3,2,"2022-03-24","2022-03-26");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (3,2,2,"2022-03-27","2022-03-29");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (3,4,3,"2022-03-23","2022-03-25");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (4,2,1,"2022-04-05","2022-04-07");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (2,1,2,"2022-04-01","2022-04-03");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (4,1,4,"2022-05-21","2022-05-23");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (3,1,2,"2022-05-11","2022-05-13");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (4,12,2,"2022-05-11","2022-05-14");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (2,11,5,"2022-05-12","2022-05-14");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (5,9,7,"2022-05-13","2022-05-16");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (12,10,8,"2022-05-14","2022-05-17");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (13,8,4,"2022-05-15","2022-05-17");
INSERT INTO transporte (id_estacion_origen, id_estacion_destino , id_vehiculo, fecha_salida, fecha_llegada)
VALUES (11,7,6,"2022-05-16","2022-05-19");


-- tabla FACTURA
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (1,3,400.00,"PAGA","2022-03-24");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (2,2,1220.00,"PAGA","2022-03-27");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (3,1,876.00,"PAGA","2022-04-04");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (4,6,330.70,"PAGA","2022-03-29");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (5,4,780.00,"PAGA","2022-03-24");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (6,5,1030.00,"PAGA","2022-05-21");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (7,3,10000.00,"GENERADA","2023-05-10");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (8,9,1905.00,"PAGA","2022-08-17");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (10,5,7023.00,"GENERADA","2022-11-14");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (11,9,8830.00,"PAGA","2022-12-12");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (4,10,7503.00,"PAGA","2022-12-11");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (5,11,2106.00,"PAGA","2022-10-18");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (8,7,5786.00,"GENERADA","2022-07-19");
INSERT INTO factura (id_transporte,id_usuario,total_factura,estado_factura,fecha_factura) 
VALUES (9,4,3712.00,"PAGA","2022-06-28");

-- tabla PAQUETE
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (1,4,3,3,0.90,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (2,1,2,2,1.20,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (2,1,2,2,3.57,"ESPERANDO RECEPCION");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (3,5,1,1,2.22,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (4,3,5,5,1.05,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (4,3,5,5,0.83,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (5,6,6,6,0.40,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,id_transporte,id_factura,peso_paquete,estado_paquete)
VALUES (6,2,4,4,0.05,"ENTREGADO");
INSERT INTO paquete (id_usuario_remitente,id_usuario_receptor,peso_paquete,estado_paquete)
VALUES (2,4,0.40,"ESPERANDO TRANSPORTE");

-- insercion de paquetes a traves de stored procedures (inserta en varias tablas)
SET @response = '0';
SET @new_id_paquete = 0;
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
CALL agregar_paquete(9, 13.59, 6, 7, @response, @new_id_paquete);
CALL modificar_estado_paquete(10,"ENTREGADO",@response);
CALL modificar_estado_paquete(11,"ESPERANDO RECEPCION",@response);
CALL modificar_estado_paquete(12,"ENTREGADO",@response);
CALL modificar_estado_paquete(13,"DEMORADO",@response);
CALL modificar_estado_paquete(14,"ENTREGADO",@response);
CALL modificar_estado_paquete(15,"ENTREGADO",@response);
CALL modificar_estado_paquete(17,"DEMORADO",@response);
CALL modificar_estado_paquete(18,"ENTREGADO",@response);
CALL modificar_estado_paquete(19,"ENTREGADO",@response);
CALL modificar_estado_paquete(20,"ENTREGADO",@response);
CALL agregar_datos_a_paquete(10, 5, 10, 5, '2023-11-15', '2023-11-17', @response);
CALL agregar_datos_a_paquete(11, 6, 8, 6, '2023-11-16', '2023-11-19', @response);
CALL agregar_datos_a_paquete(12, 7, 5, 7, '2023-11-17', '2023-11-20', @response);
CALL agregar_datos_a_paquete(13, 8, 9, 4, '2023-11-12', '2023-11-15', @response);
CALL agregar_datos_a_paquete(14, 9, 4, 8, '2023-11-14', '2023-11-16', @response);
CALL agregar_datos_a_paquete(15, 10, 7, 5, '2023-11-05', '2023-11-07', @response);
CALL agregar_datos_a_paquete(16, 11, 0, 0, '2023-11-04', '2023-11-10', @response);
CALL agregar_datos_a_paquete(17, 2, 9, 10, '2023-11-11', '2023-11-13', @response);
CALL agregar_datos_a_paquete(18, 3, 5, 9, '2023-11-12', '2023-11-14', @response);
CALL agregar_datos_a_paquete(19, 4, 7, 6, '2023-11-17', '2023-11-19', @response);
CALL agregar_datos_a_paquete(20, 6, 6, 11, '2023-11-18', '2023-11-21', @response);

-- tabla FECHAS_PAQUETE

INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (1,"2022-03-20","2022-03-23","2022-03-25");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (2,"2022-03-25","2022-03-27","2022-03-29");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (3,"2022-03-26","2022-03-27","2022-03-29");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (4,"2022-03-24","2022-03-24","2022-03-26");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (5,"2022-03-30","2022-04-01","2022-04-03");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (6,"2022-03-31","2022-04-01","2022-04-03");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (7,"2022-05-20","2022-05-21","2022-05-23");
INSERT INTO fechas_paquete (id_paquete, fecha_carga, fecha_salida, fecha_llegada)
VALUES (8,"2022-04-01","2022-04-05","2022-04-07");
INSERT INTO fechas_paquete (id_paquete, fecha_carga)
VALUES (9,"2022-08-25");

-- tabla ORIGEN_PAQUETE
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (1,3);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (2,10);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (3,11);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (4,1);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (5,7);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (6,2);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (7,9);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (8,4);
INSERT INTO origen_paquete (id_paquete,id_estacion) VALUES (9,3);


-- tabla DESTINO_PAQUETE
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (1,4);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (2,10);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (3,11);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (4,3);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (5,8);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (6,1);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (7,6);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (8,2);
INSERT INTO destino_paquete (id_paquete,id_estacion) VALUES (9,1);
