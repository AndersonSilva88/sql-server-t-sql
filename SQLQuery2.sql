-- CRIANDO TABELAS
create table alunos(
	ID_ALUNOS INT,
	NOME_ALUNO VARCHAR(50),
	EMAIL VARCHAR(100)
);

create table cursos(
	ID_CURSO INT,
	NOME_CURSO VARCHAR(100),
	PRECO_CURSOS DECIMAL(10,2)
);

CREATE TABLE matriculas(
	ID_MATRICULA INT,
	ID_ALUNO INT,
	ID_CURSO INT,
	DATA_CADASTRO DATE

);

-- LISTAR INFORMAÇÕES
SELECT * FROM ALUNOS;
SELECT * FROM CURSOS;
SELECT * FROM MATRICULAS;

-- INSERINDO DADOS
INSERT INTO ALUNOS VALUES(1,'anderson oliveira', 'anderson@gmail.com'),
						 (2,'ana maria', 'anamaria@gmail.com'),
						 (3,'carlos almeida', 'carlos@gmail.com'),
						 (4,'juliana da silveira', 'juliana@gmail.com');

INSERT INTO CURSOS VALUES(1, 'Java', 500), 
						 (2, 'Angular', 200),
						 (3, 'Sql server', 100),
						 (4,'Html', 300);

INSERT INTO MATRICULAS VALUES(1,1,1,'2023/03/11'),
							 (2,1,2,'2023/06/14'),
							 (3,2,3,'2023/01/15'),
							 (4,3,1,'2023/02/22'),
							 (5,4,1,'2023/01/23'),
							 (6,4,3,'2023/01/20');

-- UPDATE
UPDATE CURSOS
SET PRECO_CURSOS = 600
WHERE ID_CURSO = 1

-- DELETE
DELETE 
FROM matriculas 
WHERE ID_MATRICULA = 6

-- EXCLUI TABELA
--DROP TABLE ALUNOS;

-- EXCLUI BANCO
--DROP DATABASE cruddate