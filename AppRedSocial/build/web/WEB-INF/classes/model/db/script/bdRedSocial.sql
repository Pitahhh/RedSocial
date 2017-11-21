CREATE DATABASE BD_RedSocial; --DROP DATABASE BD_RedSocial
GO
USE BD_RedSocial;
GO
CREATE TABLE usuario(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(50),
	email VARCHAR(50),
	pass VARCHAR(50),
        PRIMARY KEY(id)
);
GO
CREATE TABLE imagen(
    id INT AUTO_INCREMENT,
    imagen LONGBLOB,
    descripcion VARCHAR(500),
    fk_Usuario int,
    PRIMARY KEY(id),
    FOREIGN KEY(fk_Usuario) REFERENCES usuario(id)  
);
GO
CREATE TABLE perfil(
	id INT AUTO_INCREMENT,
	descripcion VARCHAR(250),
	fk_Usuario int,
        fk_imagen INT,
        PRIMARY KEY(id),
	FOREIGN KEY(fk_Usuario) REFERENCES usuario(id)
	FOREIGN KEY(fk_imagen) REFERENCES imagen(id)
);
GO
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

INSERT INTO perfil VALUES(NULL,'Buenos dias','1');
INSERT INTO perfil VALUES(NULL,'Holaa','2');
INSERT INTO perfil VALUES(NULL,'Fiesta esta noche','3');
INSERT INTO perfil VALUES(NULL,'Se juega futbol','4');
INSERT INTO perfil VALUES(NULL,'Se programa','5');

INSERT INTO seguidores VALUES(NULL,'1','2');
INSERT INTO seguidores VALUES(NULL,'1','3');
INSERT INTO seguidores VALUES(NULL,'2','1');
INSERT INTO seguidores VALUES(NULL,'2','3');
INSERT INTO seguidores VALUES(NULL,'2','4');
INSERT INTO seguidores VALUES(NULL,'1','5');

select * from seguidores
select * from perfil
select * from usuario