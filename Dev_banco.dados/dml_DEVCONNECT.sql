--USAR O BANCO DE DADOS 
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo,nome_usuario,email,senha,foto_perfil_url)
VALUES('Laura Kauany dos Santos', 'la_hacker', 'LAURINHADOGRAU@GMAILCOM', '12345hauso', 'iudneui983489398dhw')

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(texto,data_comentario,id_usuario, id_publicacao)
VALUES('HOJE EU COMI PAO, PAO COM MACARRAO', '2025-09-08', 1, 1)

SELECT * FROM tb_publicacao;

INSERT INTO tb_comentario(id_publicacao,id_usuario)
VALUES (1,1)

SELECT * FROM tb_comentario;

INSERT INTO tb_curtida(id_publicacao,id_usuario)
VALUES(1,1)

SELECT * FROM tb_curtida;

INSERT INTO tb_seguidor(id_usuario_seguir,id_usuario_seguida)
VALUES(1,1)

SELECT * FROM tb_seguidor;
