CREATE DATABASE registro_Automovil;
use registro_Automovil; --DROP DATABASE registro_Automovil;

CREATE TABLE automovil(
    id INT auto_increment PRIMARY KEY,
    patente VARCHAR (100),
    marca VARCHAR (100),
    anio INT,
    detalles VARCHAR (100),
    rut VARCHAR (100),
    nombre VARCHAR (100),
    telefono VARCHAR(50)
);
--select * from automovil;
INSERT INTO automovil VALUES(NULL, 'AAAA-11', 'Peugeot', 2015, 'La pintura esta desgastada', '11-1', 'Pablo Perez', '+569 12345678');
INSERT INTO automovil VALUES(NULL, 'BBBB-22', 'Chevrolet', 2009, 'Sin cinturones de seguridad para niños', '11-1', 'Maria Pabla Cavieres', '+569 87654321');
INSERT INTO automovil VALUES(NULL, 'CCCC-11', 'Nissan', 2018, 'Perfecto estado', '11-1', 'Pablo Perez', '+569 11223344');

SELECT * FROM automovil WHERE patente like '%%';
SELECT COUNT(*) FROM automovil;