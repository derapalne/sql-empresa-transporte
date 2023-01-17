DROP DATABASE IF EXISTS transporte;
CREATE DATABASE IF NOT EXISTS transporte;
USE transporte;

-- CREACION DE LAS TABLAS

CREATE TABLE IF NOT EXISTS usuario (
	id_usuario INT NOT NULL primary key auto_increment,
    nombre_usuario VARCHAR(30) NOT NULL,
    apellido_usuario VARCHAR(30) NOT NULL,
    dni_usuario VARCHAR(15) NOT NULL,
    email_usuario VARCHAR(50) NOT NULL UNIQUE,
    telefono_usuario VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS estacion (
	id_estacion INT NOT NULL primary key auto_increment,
    ciudad_estacion VARCHAR(30) NOT NULL,
    nombre_estacion VARCHAR(40) NOT NULL,
    direccion_estacion VARCHAR(50) NOT NULL,
    estado_estacion VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS vehiculo (
	id_vehiculo INT NOT NULL primary key auto_increment,
    capacidad_vehiculo decimal(9,2) NOT NULL,
    modelo_vehiculo VARCHAR(20) NOT NULL,
    patente_vehiculo VARCHAR(15) NOT NULL,
    estado_vehiculo VARCHAR(15) NOT NULL,
    id_estacion_actual INT NOT NULL,
    consumo_lt_combustible_km DECIMAL(5,2)
);

CREATE TABLE IF NOT EXISTS gasto_vehiculo (
	id_gasto INT NOT NULL primary key auto_increment,
    valor_gasto DECIMAL(9,2) NOT NULL,
    descripcion_gasto VARCHAR(50) NOT NULL,
    fecha_gasto DATE NOT NULL,
    id_vehiculo INT NOT NULL
);

CREATE TABLE IF NOT EXISTS empleado (
	id_empleado INT NOT NULL primary key auto_increment,
    dni_empleado VARCHAR(20) NOT NULL,
    nombre_empleado VARCHAR(30) NOT NULL,
    apellido_empleado VARCHAR(30) NOT NULL,
    horario_empleado VARCHAR(30) NOT NULL,
    sueldo_empleado DECIMAL(9,2) NOT NULL,
    id_vehiculo INT,
    empleado_conductor BOOLEAN
);

CREATE TABLE IF NOT EXISTS asistencia_empleado (
	id_asistencia INT NOT NULL primary key auto_increment,
    id_empleado INT NOT NULL,
    id_estacion INT,
    hora_entrada TIME,
    hora_salida TIME,
    fecha_asistencia DATE
);

CREATE TABLE IF NOT EXISTS transporte (
	id_transporte INT NOT NULL primary key auto_increment,
    id_estacion_origen INT NOT NULL,
    id_estacion_destino INT NOT NULL,
    id_vehiculo INT NOT NULL,
    fecha_salida DATE NOT NULL,
    fecha_llegada DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS factura (
    id_factura INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_transporte INT NOT NULL,
    id_usuario INT NOT NULL,
    total_factura DECIMAL(9 , 2 ) NOT NULL DEFAULT 0,
    estado_factura VARCHAR(15) NOT NULL DEFAULT 'GENERADA',
    fecha_factura DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS paquete (
	id_paquete INT NOT NULL primary key auto_increment,
    id_usuario_remitente INT NOT NULL,
    id_usuario_receptor INT,
    id_transporte INT,
    id_factura INT,
    peso_paquete DECIMAL(9,2) NOT NULL,
    estado_paquete VARCHAR(20) NOT NULL 
);

CREATE TABLE IF NOT EXISTS fechas_paquete (
	id_fechas_paquete INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_paquete INT NOT NULL,
	fecha_carga DATE NOT NULL,
    fecha_salida DATE,
    fecha_llegada DATE
);

CREATE TABLE IF NOT EXISTS origen_paquete (
	id_origen_paquete INT NOT NULL primary key auto_increment,
    id_estacion INT NOT NULL,
    id_paquete INT NOT NULL
);

CREATE TABLE IF NOT EXISTS destino_paquete (
	id_destino_paquete INT NOT NULL primary key auto_increment,
    id_estacion INT NOT NULL,
    id_paquete INT NOT NULL
);

CREATE TABLE IF NOT EXISTS logs_paquete (
	id_log INT NOT NULL primary key auto_increment,
    id_paquete INT NOT NULL,
    valor_anterior VARCHAR(150),
    fecha_movimiento DATETIME NOT NULL,
    tipo_movimiento VARCHAR(20) NOT NULL,
    db VARCHAR(100) NOT NULL,
    usuario VARCHAR(100) NOT NULL
);
-- Alterar tablas

ALTER TABLE vehiculo
		ADD CONSTRAINT fk_id_estacion_actual
	FOREIGN KEY (id_estacion_actual) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE gasto_vehiculo
		ADD CONSTRAINT fk_id_vehiculo_gasto
	FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE empleado
		ADD CONSTRAINT fk_id_vehiculo_empleado
	FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE asistencia_empleado
		ADD CONSTRAINT fk_id_empleado_asistencia
	FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE asistencia_empleado
		ADD CONSTRAINT fk_id_estacion_asistencia
	FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE transporte
		ADD CONSTRAINT fk_id_estacion_origen_transporte
	FOREIGN KEY (id_estacion_origen) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE transporte
		ADD CONSTRAINT fk_id_estacion_destino_transporte
	FOREIGN KEY (id_estacion_origen) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE factura
		ADD CONSTRAINT fk_id_transporte_factura
	FOREIGN KEY (id_transporte) REFERENCES transporte(id_transporte)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE factura
		ADD CONSTRAINT fk_id_usuario_factura
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE paquete
		ADD CONSTRAINT fk_id_usuario_remitente_paquete
	FOREIGN KEY (id_usuario_remitente) REFERENCES usuario(id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE paquete
		ADD CONSTRAINT fk_id_usuario_receptor_paquete
	FOREIGN KEY (id_usuario_receptor) REFERENCES usuario(id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE paquete
		ADD CONSTRAINT fk_id_transporte_paquete
    FOREIGN KEY (id_transporte) REFERENCES transporte(id_transporte)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE paquete
		ADD CONSTRAINT fk_id_factura_paquete
	FOREIGN KEY (id_factura) REFERENCES factura(id_factura)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE fechas_paquete
		ADD CONSTRAINT fk_id_fechas_paquete
	FOREIGN KEY (id_paquete) REFERENCES paquete(id_paquete)
    ON DELETE CASCADE
    ON UPDATE CASCADE;    

ALTER TABLE origen_paquete
		ADD CONSTRAINT fk_id_estacion_origen_paquete
	FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE destino_paquete
		ADD CONSTRAINT fk_id_estacion_destino_paquete
	FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE origen_paquete
		ADD CONSTRAINT fk_id_paquete_origen_paquete
	FOREIGN KEY (id_paquete) REFERENCES paquete(id_paquete)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE destino_paquete
		ADD CONSTRAINT fk_id_paquete_destino_paquete
	FOREIGN KEY (id_paquete) REFERENCES paquete(id_paquete)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
-- creacion de FUNCIONES

DELIMITER $$
DROP FUNCTION IF EXISTS `convertir_sueldo_a_usd`$$
CREATE FUNCTION `convertir_sueldo_a_usd` (id_empleado INT, dolar INT) 
RETURNS DECIMAL(9,2)
READS SQL DATA
BEGIN
	DECLARE sueldo DECIMAL(9,2);
	SET sueldo = (SELECT sueldo_empleado FROM empleado WHERE empleado.id_empleado=id_empleado)/dolar;
	RETURN sueldo;
END$$

DROP FUNCTION IF EXISTS `costo_combustible`$$
CREATE FUNCTION `costo_combustible` (id_vehiculo INT, distancia_km DECIMAL(9,2)) 
RETURNS DECIMAL(9,2)
READS SQL DATA
BEGIN
	DECLARE costo DECIMAL(9,2);
    DECLARE consumo_lt_km DECIMAL(5,2);
    DECLARE valor_nafta DECIMAL(5,2); 
    SET valor_nafta = 145.10;
    SET consumo_lt_km = (SELECT consumo_lt_combustible_km FROM vehiculo WHERE vehiculo.id_vehiculo=id_vehiculo);
    SET costo = consumo_lt_km*distancia_km*valor_nafta;
    RETURN costo;
END$$

DROP FUNCTION IF EXISTS `get_id_usuario_by_nombre_completo`$$
CREATE FUNCTION `get_id_usuario_by_nombre_completo` (nombre_completo VARCHAR(61))
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE nombre_usuario, apellido_usuario VARCHAR(30);
    DECLARE id_usuario INT;
    SET nombre_usuario = (SELECT SUBSTRING_INDEX(nombre_completo, " ", 1));
    SET apellido_usuario = (SELECT SUBSTRING_INDEX(nombre_completo, " ", -1));
    SET id_usuario = (SELECT id_usuario FROM usuario u WHERE u.nombre_usuario=nombre_usuario AND u.apellido_usuario=apellido_usuario);
    RETURN id_usuario;
END$$

DROP FUNCTION IF EXISTS `agregar_asignacion_int`$$
CREATE FUNCTION `agregar_asignacion_int` (
	lista_asignaciones VARCHAR(200),
    campo VARCHAR(50),
    valor INT
)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
	IF lista_asignaciones = "" THEN
		SET lista_asignaciones = CONCAT(lista_asignaciones, campo, " = ", valor);
    ELSE
		SET lista_asignaciones = CONCAT(lista_asignaciones, ", ", campo, " = ", valor);
    END IF;
    RETURN lista_asignaciones;
END$$

DROP FUNCTION IF EXISTS `agregar_asignacion_date`$$
CREATE FUNCTION `agregar_asignacion_date` (lista_asignaciones VARCHAR(200), campo VARCHAR(50), valor DATE)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
	IF lista_asignaciones = "" THEN
		SET lista_asignaciones = CONCAT(lista_asignaciones, campo, " = '", valor, "'");
    ELSE
		SET lista_asignaciones = CONCAT(lista_asignaciones, ", ", campo, " = '", valor, "'");
    END IF;
    RETURN lista_asignaciones;
END$$

DROP FUNCTION IF EXISTS `get_db_version`$$
CREATE FUNCTION `get_db_version` ()
RETURNS VARCHAR(100)
NO SQL
BEGIN
	DECLARE response VARCHAR(200);
    SET response = CONCAT(DATABASE(), " | ", VERSION());
    RETURN response;
END$$

DROP FUNCTION IF EXISTS `extraer_horario_entrada`$$
CREATE FUNCTION `extraer_horario_entrada` (horarios VARCHAR(30))
RETURNS VARCHAR(25)
NO SQL
BEGIN
	DECLARE horario_entrada VARCHAR(25);
    SET horario_entrada = SUBSTRING_INDEX(horarios, "-", 1);
    RETURN horario_entrada;
END$$

DROP FUNCTION IF EXISTS `extraer_horario_salida`$$
CREATE FUNCTION `extraer_horario_salida` (horarios VARCHAR(30))
RETURNS VARCHAR(25)
NO SQL
BEGIN
	DECLARE horario_salida VARCHAR(25);
    SET horario_salida = SUBSTRING_INDEX(horarios, "-", -1);
    RETURN horario_salida;
END$$

-- creacion de STORED PROCEDURES

DROP PROCEDURE IF EXISTS `agregar_paquete`$$
CREATE PROCEDURE `agregar_paquete` (
	IN id_usuario_remitente INT,
    IN peso_paquete DECIMAL(9,2), 
    IN id_estacion_origen INT,
    IN id_estacion_destino INT,
    OUT response VARCHAR(60),
    OUT new_id_paquete INT)
sp: BEGIN
	-- declarar variables
	DECLARE id_usuario_encontrada, id_estacion_origen_encontrada, id_estacion_destino_encontrada, new_paquete_id INT;
    -- validar datos antes de empezar el procedimiento
    -- chequear que las estaciones de origen y destino sean distintas
	IF id_estacion_origen = id_estacion_destino THEN 
		SET response = "La estación de origen y destino no pueden ser iguales";
        LEAVE sp;
    END IF;
    -- seleccionar el usuario para verificar que exista, y si no existe detener la operación
	SET id_usuario_encontrada = (SELECT id_usuario FROM usuario WHERE id_usuario=id_usuario_remitente);
    IF id_usuario_encontrada IS NULL THEN
		SET response = "Usuario remitente no encontrado";
        LEAVE sp;
    END IF;
    -- seleccionar el id de estaciones de origen y destino y si no existen detener la operación
    SET id_estacion_origen_encontrada = (SELECT id_estacion FROM estacion WHERE id_estacion=id_estacion_origen);
    IF id_estacion_origen_encontrada IS NULL THEN
		SET response = "Estación de origen no encontrada";
        LEAVE sp;
    END IF;
    SET id_estacion_destino_encontrada = (SELECT id_estacion FROM estacion WHERE id_estacion=id_estacion_destino);
    IF id_estacion_destino_encontrada IS NULL THEN
		SET response = "Estación de destino no encontrada";
        LEAVE sp;
    END IF;
    -- insertar los datos que van en la tabla PAQUETE
	INSERT INTO paquete (id_usuario_remitente, peso_paquete, estado_paquete) 
    VALUES (id_usuario_remitente, peso_paquete, "ESPERANDO TRANSPORTE");
    -- seleccionar el último paquete insertado con el id del usuario remitente y traer el id
    -- que se genera de forma autoincremental
	SET new_paquete_id = (SELECT id_paquete FROM paquete 
							WHERE paquete.id_usuario_remitente=id_usuario_remitente
							ORDER BY paquete.id_paquete DESC
                            LIMIT 1);
	-- insertar los datos de estación y fecha de carga al sistema
	INSERT INTO origen_paquete (id_paquete, id_estacion) VALUES (new_paquete_id, id_estacion_origen);
    INSERT INTO destino_paquete (id_paquete, id_estacion) VALUES (new_paquete_id, id_estacion_destino);
    INSERT INTO fechas_paquete (id_paquete, fecha_carga) VALUES (new_paquete_id, CURDATE());
    -- responder exitosamente
    SET response = CONCAT("Paquete insertado exitosamente");
    SET new_id_paquete = new_paquete_id;
END$$

DROP PROCEDURE IF EXISTS `agregar_datos_a_paquete`$$
CREATE PROCEDURE `agregar_datos_a_paquete` (
	IN in_id_paquete INT,
    IN in_id_usuario_receptor INT,
    IN in_id_transporte INT,
    IN in_id_factura INT,
    IN fecha_salida DATE,
    IN fecha_llegada DATE,
    OUT response VARCHAR(70)
)
sp: BEGIN
	DECLARE id_paquete_encontrado, id_usuario_receptor_encontrado, id_transporte_encontrado, id_factura_encontrado INT;
    DECLARE lista_asignaciones_p, lista_asignaciones_f VARCHAR(200);
    SET lista_asignaciones_p = "";
    SET lista_asignaciones_f = "";
	-- validacion de datos
    -- validar existencia del paquete (obligatorio)
    SET id_paquete_encontrado = (SELECT id_paquete FROM paquete p WHERE p.id_paquete=in_id_paquete);
    IF id_paquete_encontrado IS NULL THEN
		SET response = "Paquete no encontrado";
        LEAVE sp;
    END IF;
    -- validar si se va a actualizar el id_usuario_receptor
    IF in_id_usuario_receptor <> 0 THEN
		-- valdar la existencia del usuario receptor
		SET id_usuario_receptor_encontrado = (SELECT id_usuario FROM usuario u WHERE u.id_usuario=in_id_usuario_receptor);
		IF id_usuario_receptor_encontrado IS NULL THEN
			SET response = "Usuario receptor no encontrado";
			LEAVE sp;
		END IF;
        -- agregar campo y valor a las listas
        SET lista_asignaciones_p = agregar_asignacion_int(lista_asignaciones_p, "id_usuario_receptor", in_id_usuario_receptor);
        -- SELECT lista_asignaciones_p as debug;
	END IF;
    -- validar si se va a actualizar el id_transporte
    IF in_id_transporte <> 0 THEN
		-- validar la existencia del transporte
		SET id_transporte_encontrado = (SELECT id_transporte FROM transporte t WHERE t.id_transporte=in_id_transporte);
		IF id_transporte_encontrado IS NULL THEN
			SET response = "Transporte no encontrado";
			LEAVE sp;
		END IF;
        -- agregar campo y valor a las listas
        SET lista_asignaciones_p = agregar_asignacion_int(lista_asignaciones_p, "id_transporte", in_id_transporte);
        -- SELECT lista_asignaciones_p as debug;
	END IF;
    -- validar si se va a actualizar la factura
    IF in_id_factura <> 0 THEN
		-- validar la existencia de la factura
		SET id_factura_encontrado = (SELECT id_factura FROM factura f WHERE f.id_factura=in_id_factura);
		IF id_factura_encontrado IS NULL THEN
			SET response = "Factura no encontrada";
			LEAVE sp;
		END IF;
        -- agregar campo y valor a las listas
        SET lista_asignaciones_p = agregar_asignacion_int(lista_asignaciones_p, "id_factura", in_id_factura);
        -- SELECT lista_asignaciones_p as debug;
    END IF;
    -- validar fehca_salida
    IF fecha_salida IS NOT NULL THEN
		SET lista_asignaciones_f = agregar_asignacion_date(lista_asignaciones_f, "fecha_salida", fecha_salida);
        -- SELECT lista_asignaciones_f as debug;
    END IF;
    IF fecha_llegada IS NOT NULL THEN
		SET lista_asignaciones_f = agregar_asignacion_date(lista_asignaciones_f, "fecha_llegada", fecha_llegada);
        -- SELECT lista_asignaciones_f as debug;
    END IF;
    IF lista_asignaciones_p <> "" THEN
		SET @update_paquete = CONCAT("UPDATE paquete SET ", lista_asignaciones_p, " WHERE paquete.id_paquete=", in_id_paquete);
        -- SELECT @update_paquete as update_paquete_debug, @update_fechas as update_fechas_debug;
		PREPARE update_paquete FROM @update_paquete;
		EXECUTE update_paquete;
		DEALLOCATE PREPARE update_paquete;
    END IF;
    IF lista_asignaciones_f <> "" THEN
		SET @update_fechas = CONCAT("UPDATE fechas_paquete SET ", lista_asignaciones_f, " WHERE fechas_paquete.id_paquete=", in_id_paquete);
		PREPARE update_fechas FROM @update_fechas;
		EXECUTE update_fechas;
		DEALLOCATE PREPARE update_fechas;
    END IF;
    SET response = "Paquete actualizado con éxito";
    -- SELECT p.*, f.fecha_carga, f.fecha_salida, f.fecha_llegada FROM paquete p JOIN fechas_paquete f ON p.id_paquete=f.id_paquete WHERE p.id_paquete=in_id_paquete;
END$$

DROP PROCEDURE IF EXISTS `get_paquetes_by_estacion`$$
CREATE PROCEDURE `get_paquetes_by_estacion` (
	IN in_id_estacion INT,
	IN tipo_estacion CHAR(3),
    IN campo_ordenamiento VARCHAR(20),
    IN factor_orden VARCHAR(4)
)
sp: BEGIN
	-- declaracion de variables
    DECLARE clausula_orden VARCHAR(30);
    DECLARE prefijo_orden VARCHAR(2);
    DECLARE id_estacion_encontrado INT;
	-- validacion de datos
    -- validar existencia de la estacion
    SET id_estacion_encontrado = (SELECT id_estacion FROM estacion WHERE id_estacion=in_id_estacion);
    IF id_estacion_encontrado IS NULL THEN
		SELECT CONCAT("Id de estación no encontrado: ", in_id_estacion) as response;
        LEAVE sp;
    END IF;
    -- validar tipo de estación (origen o destino)
	IF tipo_estacion <> "ORI" AND tipo_estacion <> "DES" THEN
		SELECT CONCAT("Tipo de estación especificada inválido: ", tipo_estacion) as response;
        LEAVE sp;
    END IF;
    -- validar campo de ordenamiento y setear el prefijo según la tabla a la que pertenezca
	IF campo_ordenamiento = "fecha_carga"
	OR campo_ordenamiento = "fecha_salida"
	OR campo_ordenamiento = "fecha_llegada" THEN
		SET prefijo_orden = "f.";
	ELSE
		IF campo_ordenamiento = "id_usuario_remitente"
		OR campo_ordenamiento = "id_usuario_receptor"
		OR campo_ordenamiento = "id_paquete"
		OR campo_ordenamiento = "id_transporte"
		OR campo_ordenamiento = "id_factura"
		OR campo_ordenamiento = "peso_paquete"
		OR campo_ordenamiento = "estado_paquete" THEN
			SET prefijo_orden = "p.";
		ELSE
			IF campo_ordenamiento = "id_usuario_remitente"
			OR campo_ordenamiento = "id_usuario_receptor"
			OR campo_ordenamiento = "id_paquete"
			OR campo_ordenamiento = "id_transporte"
			OR campo_ordenamiento = "id_factura"
			OR campo_ordenamiento = "peso_paquete"
			OR campo_ordenamiento = "estado_paquete" THEN
				SET prefijo_orden = "p.";
			ELSE
				IF campo_ordenamiento <> "" THEN
					SELECT CONCAT("Proporcione un campo de ordenamiento válido: ", campo_ordenamiento) as response;
					LEAVE sp;
				END IF;
			END IF;
		END IF;
	END IF;
    -- SELECT "Campo ordenamiento validado" as debug;
    IF factor_orden <> "ASC" AND factor_orden <> "DESC" AND factor_orden <> "" THEN
		SELECT "Proporcione un factor de ordenamiento válido" as response;
        LEAVE sp;
    END IF;
    -- comienzo procedimiento
    -- de acuerdo al tipo de estacion
    IF tipo_estacion = "ORI" THEN
		-- SELECT tipo_estacion as tipo_estacion_debug;
		SET @sentencia = CONCAT("SELECT e.id_estacion as id_estacion_origen, p.*, f.fecha_carga, f.fecha_salida, f.fecha_llegada 
						 FROM origen_paquete e 
                         JOIN paquete p ON e.id_paquete=p.id_paquete 
                         JOIN fechas_paquete f ON e.id_paquete=f.id_paquete 
                         WHERE e.id_estacion=", in_id_estacion);
    ELSE -- si no es "ORI" es "DES"
		SET @sentencia = CONCAT("SELECT e.id_estacion as id_estacion_destino, p.*, f.fecha_carga, f.fecha_salida, f.fecha_llegada 
						 FROM destino_paquete e 
                         JOIN paquete p ON e.id_paquete=p.id_paquete 
                         JOIN fechas_paquete f ON e.id_paquete=f.id_paquete 
                         WHERE e.id_estacion=", in_id_estacion);
    END IF;
    -- de acuerdo al campo de ordenamiento    
    IF campo_ordenamiento = "" THEN
		SET clausula_orden = "";
	ELSE
		SET clausula_orden = CONCAT(" ORDER BY ", prefijo_orden, campo_ordenamiento, " ", factor_orden);
    END IF;
    
    SET @sentencia = CONCAT(@sentencia, clausula_orden);
    PREPARE sentencia_preparada FROM @sentencia;
    EXECUTE sentencia_preparada;
    -- SELECT sentencia_preparada;
    DEALLOCATE PREPARE sentencia_preparada;
END$$

DROP PROCEDURE IF EXISTS `modificar_estado_paquete`$$
CREATE PROCEDURE `modificar_estado_paquete` (
	IN in_id_paquete INT,
    IN in_estado_paquete VARCHAR(20)
)
sp: BEGIN
	DECLARE id_paquete_encontrado INT;
    IF in_estado_paquete <> "ESPERANDO TRANSPORTE"
    AND in_estado_paquete <> "EN CAMINO"
    AND in_estado_paquete <> "DEMORADO"
    AND in_estado_paquete <> "ESPERANDO RECEPCION"
    AND in_estado_paquete <> "ENTREGADO" THEN
		SELECT CONCAT("Proporcione un estado válido: ", in_estado_paquete, " no pertenece a las opciones aceptadas") AS response;
        LEAVE sp;
    END IF;
    SET id_paquete_encontrado = (SELECT id_paquete FROM paquete WHERE paquete.id_paquete=in_id_paquete);
    IF id_paquete_encontrado IS NULL THEN
		SELECT CONCAT("El paquete no ha sido encontrado. Id: ", in_id_paquete) AS response;
        LEAVE sp;
    END IF;
    UPDATE paquete SET paquete.estado_paquete = in_estado_paquete WHERE paquete.id_paquete=in_id_paquete;
    SELECT CONCAT("Paquete actualizado exitosamente. Id: ", in_id_paquete) AS response;
END$$


/*
DROP PROCEDURE IF EXISTS ``$$
CREATE PROCEDURE `` ()
BEGIN
END$$
*/

DELIMITER ;

-- creacion de VISTAS

-- toda la información de los paquetes no entregados
CREATE OR REPLACE VIEW paquetes_no_entregado_view AS
	SELECT p.*, o.id_estacion as id_estacion_origen, d.id_estacion as id_estacion_destino,
		   f.fecha_carga, f.fecha_salida, f.fecha_llegada
	FROM paquete p 
		JOIN origen_paquete o ON p.id_paquete=o.id_paquete
        JOIN destino_paquete d ON p.id_paquete=d.id_paquete
        JOIN fechas_paquete f ON p.id_paquete=f.id_paquete
	WHERE p.estado_paquete NOT LIKE "ENTREGADO";

-- todos los empleados conductores y sus vehiculos asociados
CREATE OR REPLACE VIEW empleados_conductores_view AS
	SELECT e.id_empleado, e.dni_empleado, e.nombre_empleado, e.apellido_empleado, e.horario_empleado, e.id_vehiculo,
		   v.patente_vehiculo, v.modelo_vehiculo, v.estado_vehiculo, v.id_estacion_actual,
           est.ciudad_estacion as ciudad_estacion_actual, est.nombre_estacion as nombre_estacion_actual
    FROM empleado e
		JOIN vehiculo v ON e.id_vehiculo=v.id_vehiculo
        JOIN estacion est ON v.id_estacion_actual=est.id_estacion
	WHERE e.empleado_conductor LIKE true;

-- todos los gastos de vehículos con los responsables de dicho vehículo
CREATE OR REPLACE VIEW gasto_vehiculo_responsable_view AS
	SELECT g.id_vehiculo, g.valor_gasto, g.descripcion_gasto, g.fecha_gasto,
		   e.nombre_empleado, e.apellido_empleado, e.id_empleado,
           v.patente_vehiculo, v.consumo_lt_combustible_km
    FROM gasto_vehiculo g 
		JOIN empleado e ON g.id_vehiculo=e.id_vehiculo
        JOIN vehiculo v ON v.id_vehiculo=g.id_vehiculo;
    
-- todas las inasistencias con nombre y apellido
CREATE OR REPLACE VIEW inasistencias_view AS
	SELECT a.fecha_asistencia as fecha_inasistencia, e.nombre_empleado, e.apellido_empleado, e.id_empleado
    FROM asistencia_empleado a JOIN empleado e ON a.id_empleado=e.id_empleado
    WHERE a.hora_entrada IS NULL;

-- llegadas tarde de los empleados con fecha y hora
CREATE OR REPLACE VIEW llegadas_tarde_view AS
	SELECT extraer_horario_entrada(e.horario_empleado) as horario_entrada_empleado , a.hora_entrada, a.fecha_asistencia,
		   e.id_empleado, e.nombre_empleado, e.apellido_empleado
	FROM empleado e
	JOIN asistencia_empleado a ON a.id_empleado=e.id_empleado
	WHERE a.hora_entrada > ADDTIME(extraer_horario_entrada(e.horario_empleado), "00:05");

-- salidas temprano de los empleados con fecha y hora
CREATE OR REPLACE VIEW salidas_temprano_view AS
	SELECT extraer_horario_salida(e.horario_empleado) as horario_salida_empleado , a.hora_salida, a.fecha_asistencia, 
		   e.id_empleado, e.nombre_empleado, e.apellido_empleado
	FROM empleado e
	JOIN asistencia_empleado a ON a.id_empleado=e.id_empleado
	WHERE a.hora_salida < ADDTIME(extraer_horario_salida(e.horario_empleado), "-00:05");

-- usuarios con facturas sin pagar
CREATE OR REPLACE VIEW usuarios_deudores_view AS
	SELECT u.id_usuario ,u.nombre_usuario, u.apellido_usuario, f.id_factura, f.estado_factura, f.total_factura
    FROM factura f JOIN usuario u ON f.id_usuario=u.id_usuario
    WHERE f.estado_factura NOT LIKE "PAGA";

-- creacion de TRIGGERS

-- INSERTAR en TABLA AUDITORIA DATOS DE PAQUETE

DROP TRIGGER IF EXISTS `after_insert_log_movimiento_paquete`;
CREATE TRIGGER `after_insert_log_movimiento_paquete` AFTER INSERT ON `paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CURRENT_TIMESTAMP(), "INSERT", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_update_log_movimiento_paquete`;
CREATE TRIGGER `after_update_log_movimiento_paquete` AFTER UPDATE ON `paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, valor_anterior, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CONCAT(
								OLD.id_paquete, ", u remitente: ", 
                                OLD.id_usuario_remitente, ", u receptor: ", 
                                OLD.id_usuario_receptor, ", transporte: ", 
								OLD.id_transporte, ",  facture; ",
                                OLD.id_factura, ",  peso; ",
                                OLD.peso_paquete, ", estado: ",
                                OLD.estado_paquete
                                ), CURRENT_TIMESTAMP(), "UPDATE", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_delete_log_movimiento_paquete`;
CREATE TRIGGER `after_delete_log_movimiento_paquete` AFTER DELETE ON `paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (OLD.id_paquete, CURRENT_TIMESTAMP(), "DELETE", get_db_version(), USER());

-- INSERTAR EN TABLA AUDITORIA DATOS DE DESTINO PAQUETE

DROP TRIGGER IF EXISTS `after_insert_log_movimiento_destino_paquete`;
CREATE TRIGGER `after_insert_log_movimiento_destino_paquete` AFTER INSERT ON `destino_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CURRENT_TIMESTAMP(), "INSERT DESTINO", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_update_log_movimiento_destino_paquete`;
CREATE TRIGGER `after_update_log_movimiento_destino_paquete` AFTER UPDATE ON `destino_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, valor_anterior, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CONCAT(
								OLD.id_destino_paquete, ", id paquete: ", 
								OLD.id_paquete, ", id estación destino: ", 
                                OLD.id_estacion
                                ), CURRENT_TIMESTAMP(), "UPDATE DESTINO", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_delete_log_movimiento_destino_paquete`;
CREATE TRIGGER `after_delete_log_movimiento_destino_paquete` AFTER DELETE ON `destino_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (OLD.id_paquete, CURRENT_TIMESTAMP(), "DELETE DESTINO", get_db_version(), USER());

-- INSERTAR EN TABLA AUDITORIA DATOS DE ORIGEN PAQUETE

DROP TRIGGER IF EXISTS `after_insert_log_movimiento_origen_paquete`;
CREATE TRIGGER `after_insert_log_movimiento_origen_paquete` AFTER INSERT ON `origen_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CURRENT_TIMESTAMP(), "INSERT ORIGEN", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_update_log_movimiento_origen_paquete`;
CREATE TRIGGER `after_update_log_movimiento_origen_paquete` AFTER UPDATE ON `origen_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, valor_anterior, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CONCAT(
								OLD.id_origen_paquete, ", id paquete: ", 
								OLD.id_paquete, ", id estación destino: ", 
                                OLD.id_estacion
                                ), CURRENT_TIMESTAMP(), "UPDATE ORIGEN", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_delete_log_movimiento_origen_paquete`;
CREATE TRIGGER `after_delete_log_movimiento_origen_paquete` AFTER DELETE ON `origen_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (OLD.id_paquete, CURRENT_TIMESTAMP(), "DELETE ORIGEN", get_db_version(), USER());


-- INSERTAR EN TABLA AUDITORIA DATOS DE FECHAS PAQUETE

DROP TRIGGER IF EXISTS `after_insert_log_movimiento_fechas_paquete`;
CREATE TRIGGER `after_insert_log_movimiento_fechas_paquete` AFTER INSERT ON `fechas_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CURRENT_TIMESTAMP(), "INSERT FECHA", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_update_log_movimiento_fechas_paquete`;
CREATE TRIGGER `after_update_log_movimiento_fechas_paquete` AFTER UPDATE ON `fechas_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, valor_anterior, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (NEW.id_paquete, CONCAT(
								OLD.id_paquete, ", carga: ", 
                                OLD.fecha_carga, ", salida: ", 
                                OLD.fecha_salida, ", llegada: ", 
                                OLD.fecha_llegada), CURRENT_TIMESTAMP(), "UPDATE FECHA", get_db_version(), USER());

DROP TRIGGER IF EXISTS `after_delete_log_movimiento_fechas_paquete`;
CREATE TRIGGER `after_delete_log_movimiento_fechas_paquete` AFTER DELETE ON `fechas_paquete`
FOR EACH ROW
INSERT INTO `logs_paquete` (id_paquete, fecha_movimiento, tipo_movimiento, db, usuario)
VALUES (OLD.id_paquete, CURRENT_TIMESTAMP(), "DELETE FECHA", get_db_version(), USER());

DELIMITER $$

DROP TRIGGER IF EXISTS `before_insert_paquete`$$
CREATE TRIGGER `before_insert_paquete` BEFORE INSERT ON `paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_usuario_remitente < 0 
    OR NEW.id_usuario_receptor < 0 
    OR NEW.id_transporte < 0
    OR NEW.id_transporte < 0
    OR NEW.peso_paquete < 0.00 
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_update_paquete`$$
CREATE TRIGGER `before_update_paquete` BEFORE UPDATE ON `paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_usuario_remitente < 0 
    OR NEW.id_usuario_receptor < 0 
    OR NEW.id_transporte < 0
    OR NEW.id_transporte < 0
    OR NEW.peso_paquete < 0.00
    THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
    SET NEW.estado_paquete = UCASE(NEW.estado_paquete);
END$$

DROP TRIGGER IF EXISTS `before_insert_destino_paquete`$$
CREATE TRIGGER `before_insert_destino_paquete` BEFORE INSERT ON `destino_paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_paquete < 0 
    OR NEW.id_estacion < 0 
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_update_destino_paquete`$$
CREATE TRIGGER `before_update_destino_paquete` BEFORE UPDATE ON `destino_paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_paquete < 0 
    OR NEW.id_estacion < 0 
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_insert_origen_paquete`$$
CREATE TRIGGER `before_insert_origen_paquete` BEFORE INSERT ON `origen_paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_paquete < 0 
    OR NEW.id_estacion < 0 
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_update_origen_paquete`$$
CREATE TRIGGER `before_update_origen_paquete` BEFORE UPDATE ON `origen_paquete`
FOR EACH ROW
BEGIN
    IF NEW.id_paquete < 0 
    OR NEW.id_estacion < 0 
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible insertar números negativos";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_insert_fechas_paquete`$$
CREATE TRIGGER `before_insert_fechas_paquete` BEFORE INSERT ON `fechas_paquete`
FOR EACH ROW
BEGIN
    IF NEW.fecha_carga > CURDATE()
    OR NEW.fecha_salida > CURDATE()
	OR NEW.fecha_llegada > CURDATE()
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible elegir fecha de carga, salida o llegada en el futuro.";
    END IF;
END$$

DROP TRIGGER IF EXISTS `before_update_fechas_paquete`$$
CREATE TRIGGER `before_update_fechas_paquete` BEFORE UPDATE ON `fechas_paquete`
FOR EACH ROW
BEGIN
    IF NEW.fecha_carga > CURDATE()
    THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Imposible elegir fecha de carga en el futuro.";
    END IF;
    IF NEW.fecha_salida IS NOT NULL AND NEW.fecha_salida < NEW.fecha_carga AND NEW.fecha_salida <> OLD.fecha_salida
    OR NEW.fecha_llegada IS NOT NULL AND NEW.fecha_llegada < NEW.fecha_salida AND NEW.fecha_llegada <> OLD.fecha_llegada
    THEN 
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Fecha de salida o llegada inválida";
    END IF;
END$$

DELIMITER ;