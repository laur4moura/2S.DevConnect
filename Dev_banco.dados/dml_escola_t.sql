--Usar um banco já criado
USE db_escola_T;

--INSERIR 1 REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola


INSERT INTO tb_turma (serie, periodo, numero_sala,nome_turma)
VALUES
( 1,'tarde',16,'SEDUC'),
( 2,'tarde',18,'SEDUC'),
( 3,'manhã',18,'SEDUC');

SELECT * FROM tb_turma

INSERT INTO tb_prova( nome_professor,disciplina, duracao, nota, data_prova)
VALUES 
('Ana Claudia', 'Educação Física', '13:15:00', 10, '2025-09-26'),
('Rogéria', 'Matematica', '12:15:00', 9, '2025-09-25'),
('Ivan', 'Biologia','10:15:00',9.5, '2025-09-25');

SELECT * FROM tb_prova

INSERT INTO tb_aluno(nome,cpf, matricula, data_nasc, id_escola)
VALUES
('Laura Anacleto', '71580689868','LA-09-16', '2008-09-16', 1),
('Larissa Lustosa','81739763840','LL-09-28', '2003-09-28',1 );


INSERT INTO tb_aluno(nome,cpf, matricula, data_nasc, id_escola)
VALUES
('Eloysa Marques','87713613838','EM-10-13', '2008-10-13',1 ),
('Lorenzo Mangile','28356233887','LM-11-04', '2008-11-04',1 ),
('Livia Caires','85614515801','LC-04-13', '2008-04-13',1 );


SELECT * FROM tb_aluno

--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR
DELETE FROM tb_aluno
WHERE id = 2;

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET nome = 'Laura Kauany', cpf = '29176675831', matricula = 'LK-09-16'
WHERE id = 1;

SELECT * FROM tb_aluno

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_turma
SET numero_turma = 'SEDUC';

--MUDAR NOME DA COLUNA 
EXEC sp_rename 'tb_turma.numero_turma', 'nome_turma', 'COLUMN';

UPDATE tb_turma
SET 