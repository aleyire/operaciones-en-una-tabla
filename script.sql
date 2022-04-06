----- Parte 1 -----
--(1) Crear Base de datos 'post_tables'
CREATE DATABASE posts_db;
--Ingresar a la Base de datos 'post_tables'
\c posts_db;
--(2) Crear tabla 'post_table' con los atributoss id, nombre de usuario, fecha de creación, contenido y descripción
CREATE TABLE post_table(id VARCHAR(4), nombre_usuario VARCHAR(15) NOT NULL, fecha_creacion DATE, contenido VARCHAR(255) NOT NULL, descripcion VARCHAR(255) NOT NULL, PRIMARY KEY (id));
--(3) Insertar 3 post_table, 2 para el usuario 'Pamela' y uno para 'Carlos'
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0001', 'Pamela', '2022-04-05', 'post 1 Pamela', 'yyy');
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0002', 'Pamela', '2022-04-05', 'post 2 Pamela', 'yyy');
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0003', 'Carlos', '2022-04-05', 'post 3 Carlos', 'yyy');
--(4) Modificar la tabla post_table, agregando la columna título
ALTER TABLE post_table ADD titulo VARCHAR(25);
--(5) Agregar título a las publicaciones ya ingresadas
UPDATE post_table SET titulo='Título 1' WHERE id = '0001';
UPDATE post_table SET titulo='Título 2' WHERE id = '0002';
UPDATE post_table SET titulo='Título 3' WHERE id = '0003';
--(6) Insertar 2 post_table para el usuario 'Pedro'
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0004', 'Pedro', '2022-04-05', 'post 4 Pedro', 'yyy', 'Título 4');
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0005', 'Pedro', '2022-04-05', 'post 5 Pedro', 'yyy', 'Título 5');
--(7) Eliminar el post_table de 'Carlos'
DELETE FROM post_table WHERE id = '0003';
--(8) Ingresar un nuevo post_table para el usuario 'Carlos'
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0006', 'Carlos', '2022-04-05', 'post 6 Carlos', 'yyy', 'Título 6');

----- Parte 2 -----
--(1) Crear una nueva tabla llamada 'comentarios_table', con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla post_tables
CREATE TABLE comentarios_table(id VARCHAR(4), fecha DATE, hora_creacion TIME, contenido VARCHAR(255), id_post VARCHAR(10), PRIMARY KEY (id), FOREIGN KEY (id_post) REFERENCES post_table(id));
--(2) Crear 2 comentarios para el post_table de 'Pamela' y 4 para 'Carlos'
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0001', '2022-04-05', '11:51', 'comentario 1 Pamela', '0001');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0002', '2022-04-05', '11:52', 'comentario 2 Pamela', '0002');  
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0003', '2022-04-05', '11:52', 'comentario 3 Carlos', '0006');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0004', '2022-04-05', '11:53', 'comentario 4 Carlos', '0006');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0005', '2022-04-05', '11:53', 'comentario 5 Carlos', '0006');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0006', '2022-04-05', '11:54', 'comentario 6 Carlos', '0006');
--(3) Crear un nuevo post_table para 'Margarita'
INSERT INTO post_table(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0007', 'Margarita', '2022-04-05', 'post 7 Margarita', 'yyy', 'Título 7');
--(4) Ingresar 5 comentarios_table para el post_table de 'Margarita'
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0007', '2022-04-05', '11:56', 'comentario 7 Margarita', '0007');  
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0008', '2022-04-05', '11:57', 'comentario 8 Margarita', '0007');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0009', '2022-04-05', '11:57', 'comentario 9 Margarita', '0007');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0010', '2022-04-05', '11:58', 'comentario 10 Margarita', '0007');
INSERT INTO comentarios_table(id, fecha, hora_creacion, contenido, id_post) VALUES ('0011', '2022-04-05', '11:58', 'comentario 11 Margarita', '0007');