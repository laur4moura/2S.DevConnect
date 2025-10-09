--DDL
CREATE DATABASE db__devconnect;

USE db__devconnect;

CREATE TABLE tb_usuario (
id INT IDENTITY(1,1) PRIMARY KEY,
nome_completo        NVARCHAR (255)           NOT NULL, 
nome_usuario         NVARCHAR (50)            NOT NULL, 
email                NVARCHAR (255) UNIQUE    NOT NULL, 
senha                NVARCHAR (50)            NOT NULL, 
foto_perfil_url      NVARCHAR (150)           NULL, 
);
SELECT * FROM tb_usuario;

ALTER TABLE tb_usuario
ALTER COLUMN nome_usuario NVARCHAR (50) NOT NULL;
--------------------------------------------------------

CREATE TABLE tb_publicacao (
id INT IDENTITY(1,1) PRIMARY KEY,
descricao            NVARCHAR (255)           NULL,
imagem_url           NVARCHAR (150)           NULL,
data_publicacao      DATE                     NOT NULL,

id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id)
); 
SELECT * FROM tb_publicacao;
--------------------------------------------------------

CREATE TABLE tb_seguidor (
id_usuario_seguir INT NOT NULL,
id_usuario_seguida INT NOT NULL,

PRIMARY KEY (id_usuario_seguir, id_usuario_seguida)
);
SELECT * FROM tb_seguidor;
--------------------------------------------------------

CREATE TABLE tb_comentarios (
id INT IDENTITY(1,1) PRIMARY KEY,
texto                NVARCHAR (1000)       NOT NULL,
data_comentario      DATE                  NOT NULL,

id_usuario    INT FOREIGN KEY REFERENCES   tb_usuario(id),
id_publicacao INT FOREIGN KEY REFERENCES   tb_publicacao(id)
);
SELECT * FROM tb_comentarios;
--------------------------------------------------------

CREATE TABLE tb_curtidas (
id INT IDENTITY(1,1) PRIMARY KEY,

id_usuario    INT FOREIGN KEY REFERENCES   tb_usuario(id),
id_publicacao INT FOREIGN KEY REFERENCES   tb_publicacao(id)
);
SELECT * FROM tb_curtidas;

