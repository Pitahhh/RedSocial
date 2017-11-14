CREATE DATABASE BD_RedSocial; --DROP DATABASE BD_RedSocial
GO
USE BD_RedSocial;
GO
CREATE TABLE usuario(
	id INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50),
	email VARCHAR(50),
	pass VARCHAR(50),
	
);

GO
INSERT INTO usuario VALUES('angel','asd@asd.cl','1234');
INSERT INTO usuario VALUES('pedro','pedro@asd.cl','1234');
INSERT INTO usuario VALUES('matias','matias@asd.cl','1234');
INSERT INTO usuario VALUES('veroko','veroko@asd.cl','1234');
INSERT INTO usuario VALUES('edunaldo','edunaldo@asd.cl','1234');
GO
CREATE TABLE perfil(
	id INT PRIMARY KEY IDENTITY(1,1),
	publicar VARCHAR(500),
	fk_Usuario int,
	FOREIGN KEY (fk_Usuario) REFERENCES usuario(id)
);
GO
INSERT INTO perfil VALUES('Buenos dias','1');
INSERT INTO perfil VALUES('Holaa','2');
INSERT INTO perfil VALUES('Fiesta esta noche','3');
INSERT INTO perfil VALUES('Se juega futbol','4');
INSERT INTO perfil VALUES('Se programa','5');
GO
CREATE TABLE seguidores(
	id INT PRIMARY KEY IDENTITY(1,1),
	fk_UsuarioSeguido int,
	fk_UsuarioSeguidor int,
	FOREIGN KEY (fk_UsuarioSeguido) REFERENCES perfil(id),
	FOREIGN KEY (fk_UsuarioSeguidor) REFERENCES perfil(id)

);


INSERT INTO seguidores VALUES('1','2');
INSERT INTO seguidores VALUES('1','3');
INSERT INTO seguidores VALUES('2','1');
INSERT INTO seguidores VALUES('2','3');
INSERT INTO seguidores VALUES('2','4');
INSERT INTO seguidores VALUES('1','5');


select * from seguidores
select * from perfil
select * from usuario