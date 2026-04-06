CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE empresa (
    codigo_empresa  INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa  VARCHAR(150) NOT NULL
);

CREATE TABLE trazabilidad (
    id_trazabilidad INT AUTO_INCREMENT PRIMARY KEY,
    codigo_empresa  INT NOT NULL,
    encargado       VARCHAR(150) NOT NULL,
    fecha_ini       DATE NOT NULL,
    fecha_fin       DATE NOT NULL,
    telefono        VARCHAR(20),
    correo          VARCHAR(100),
    estado          VARCHAR(50),
    fecha_cierre    DATE NOT NULL,
    CONSTRAINT fk_empresa FOREIGN KEY (codigo_empresa)
        REFERENCES empresa(codigo_empresa)
);
