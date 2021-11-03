CREATE DATABASE notas_db;

use notas_db;

CREATE TABLE usuarios
(
user_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
email VARCHAR(40) NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE notas
(
nota_id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(100) NOT NULL,
fecha_creacion TIMESTAMP,
fecha_edicion TIMESTAMP,
contenido TEXT,
UserID INT NOT NULL,
PRIMARY KEY (nota_id),
FOREIGN KEY (UserID) REFERENCES usuarios (user_id)
);

CREATE TABLE categorias
(
categoria_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(40) NOT NULL,
PRIMARY KEY (categoria_id)
);

CREATE TABLE notas_categorias
(
nota_catego_id INT NOT NULL AUTO_INCREMENT,
NotaID INT NOT NULL,
CategoriaID INT NOT NULL,
PRIMARY KEY (nota_catego_id),
FOREIGN KEY (NotaID) REFERENCES notas (nota_id),
FOREIGN KEY (CategoriaID) REFERENCES categorias (categoria_id)
)
