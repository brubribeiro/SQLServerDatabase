/* DML - Linguagem de Manipulação de Dados */

/* Inserir dados de um aluno */
INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Bruna','R124', 22);

/* Inserir dado na tabela materia */
INSERT INTO materia (Materia) VALUES ('Matemática');

/*Excluir dado*/
DELETE FROM materia WHERE IdMateria = 2;

/* TRUNCATE - Apaga todos os registro de uma tabela*/
TRUNCATE TABLE materia;

/*SUBSTRING*/
--Pegamos parte de uma string
SELECT SUBSTRING(Nome,0,2) AS inicial FROM aluno;

/*UPPER*/
--Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/*LOWER*/
--Deixar tudo em minusculo
SELECT LOWER(Nome) AS Nome FROM aluno;