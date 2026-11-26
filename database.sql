CREATE DATABASE IF NOT EXISTS `Paises_7B`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE `Paises_7B`;

CREATE TABLE IF NOT EXISTS paises (
    pais_id INT NOT NULL AUTO_INCREMENT,
    pais_descripcion VARCHAR(50) NOT NULL,
    PRIMARY KEY (pais_id),
    UNIQUE KEY uq_paises_descripcion (pais_descripcion)
);

CREATE TABLE IF NOT EXISTS provincias (
    pro_id INT NOT NULL AUTO_INCREMENT,
    pais_id INT NOT NULL,
    pro_descripcion VARCHAR(50) NOT NULL,
    PRIMARY KEY (pro_id),
    UNIQUE KEY uq_provincias_pais_descripcion (pais_id, pro_descripcion),
    CONSTRAINT fk_provincias_paises
        FOREIGN KEY (pais_id) REFERENCES paises (pais_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO paises (pais_descripcion) VALUES
    ('Argentina'),
    ('Bolivia'),
    ('Brasil'),
    ('Chile'),
    ('Colombia'),
    ('Costa Rica'),
    ('Cuba'),
    ('Ecuador'),
    ('El Salvador'),
    ('Guatemala'),
    ('Haití'),
    ('Honduras'),
    ('México'),
    ('Nicaragua'),
    ('Panamá'),
    ('Paraguay'),
    ('Perú'),
    ('República Dominicana'),
    ('Uruguay'),
    ('Venezuela')
ON DUPLICATE KEY UPDATE pais_descripcion = VALUES(pais_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Buenos Aires' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Catamarca' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Chaco' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Chubut' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Córdoba' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Corrientes' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Entre Ríos' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Formosa' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Jujuy' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'La Pampa' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'La Rioja' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Mendoza' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Misiones' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Neuquén' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Río Negro' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Salta' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'San Juan' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'San Luis' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Santa Cruz' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Santa Fe' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Santiago del Estero' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Tierra del Fuego' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);

INSERT INTO provincias (pais_id, pro_descripcion)
SELECT pais_id, 'Tucumán' FROM paises WHERE pais_descripcion = 'Argentina'
ON DUPLICATE KEY UPDATE pro_descripcion = VALUES(pro_descripcion);
