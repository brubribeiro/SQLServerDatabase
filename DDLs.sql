/* DDL - Linguagem de Definição de Dados*/

/* Criar banco */
CREATE DATABASE boletim;

/* Excluir banco */
DROP DATABASE boletim;

/* Usar o banco */
USE boletim;

/* Criar tabela aluno */
-- Not null - serve para obrigar o dado a ser preenchido
-- Identity - serve para autoincrementar de 1 em 1
CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	Ra VARCHAR(20),
	Idade INT
);

/* Criar tabela de matéria */
CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50) NOT NULL
);

CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,
	--Chamamos nossas chaves estrangeiras
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)
);

/* Incluir nova coluna */
ALTER TABLE materia ADD Teste VARCHAR(2);

/* Excluir coluna */
ALTER TABLE materia DROP COLUMN Teste;