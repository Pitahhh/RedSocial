CREATE DATABASE BD_RedSocial; --DROP DATABASE BD_RedSocial

USE BD_RedSocial;

CREATE TABLE usuario(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(50),
	email VARCHAR(50),
	pass VARCHAR(50),
        PRIMARY KEY(id)
);

CREATE TABLE imagen(
    id INT AUTO_INCREMENT,
    imagen LONGBLOB,
    descripcion VARCHAR(500),
    fk_Usuario int,
    PRIMARY KEY(id),
    FOREIGN KEY(fk_Usuario) REFERENCES usuario(id)  
);

CREATE TABLE perfil(
	id INT AUTO_INCREMENT,
	descripcion VARCHAR(250),
        fk_imagen INT,
        PRIMARY KEY(id),
	FOREIGN KEY(fk_imagen) REFERENCES imagen(id)
);

CREATE TABLE seguidores(
	id INT AUTO_INCREMENT,
	fk_UsuarioSeguido int,
	fk_UsuarioSeguidor int,
        PRIMARY KEY(id),
	FOREIGN KEY (fk_UsuarioSeguido) REFERENCES perfil(id),
	FOREIGN KEY (fk_UsuarioSeguidor) REFERENCES perfil(id)
);


INSERT INTO usuario VALUES(NULL, 'angel','asd@asd.cl','1234');
INSERT INTO usuario VALUES(NULL, 'pedro','pedro@asd.cl','1234');
INSERT INTO usuario VALUES(NULL, 'matias','matias@asd.cl','1234');
INSERT INTO usuario VALUES(NULL, 'veroko','veroko@asd.cl','1234');
INSERT INTO usuario VALUES(NULL, 'edunaldo','edunaldo@asd.cl','1234');

INSERT INTO imagen VALUES(NULL, 'asdasdasd', 'Lindo viajee jeje', 1);
INSERT INTO imagen VALUES(NULL, 'asd5a4d6a5s4d', 'aqui con los cabros', 2);
INSERT INTO imagen VALUES(NULL, 'asdasdasdas', 'lindio dia en la playa', 3);
INSERT INTO imagen VALUES(NULL, 'asdasdasdasasd', 'paseando', 4);

INSERT INTO perfil VALUES(NULL,'Buenos dias',1);
INSERT INTO perfil VALUES(NULL,'Holaa',2);
INSERT INTO perfil VALUES(NULL,'Fiesta esta noche',3);
INSERT INTO perfil VALUES(NULL,'Se juega futbol',4);
INSERT INTO perfil VALUES(NULL,'Se programa',5);

INSERT INTO seguidores VALUES(NULL,'1','2'); -- primero sigue
INSERT INTO seguidores VALUES(NULL,'1','3');
INSERT INTO seguidores VALUES(NULL,'2','1');
INSERT INTO seguidores VALUES(NULL,'2','3');
INSERT INTO seguidores VALUES(NULL,'2','4');
INSERT INTO seguidores VALUES(NULL,'1','1');

select * from seguidores
select * from perfil
select * from usuario
select * from imagen

SELECT * FROM usuario WHERE nombre = 'matias' AND pass = '1234'
select count(id) from seguidores where fk_UsuarioSeguido=1 --Personas Seguidas
select count(id) from seguidores where fk_UsuarioSeguidor=1 --Personas que te siguen

CREATE VIEW perfilFull AS
Select perfil.id, perfil.descripcion, imagen.imagen
FROM perfil, imagen, usuario
WHERE perfil.fk_imagen = fk_imagen.id AND imagen.fk_Usuario = usuario.id and usuario.id = 2


Select imagen.imagen
FROM perfil, imagen, usuario
WHERE perfil.fk_imagen = imagen.id AND imagen.fk_Usuario = usuario.id and usuario.id = 2