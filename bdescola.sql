CREATE DATABASE bdmatricula;

USE bdmatricula;

CREATE TABLE turma(
	IdTurma INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);

CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	IdTurma INT FOREIGN KEY REFERENCES turma(IdTurma)
);

CREATE TABLE responsavel(
	IdResponsavel INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)
);

INSERT INTO turma (Nome) VALUES ('Turma A');
INSERT INTO turma (Nome) VALUES ('Turma B');

INSERT INTO aluno (Nome, Ra, IdTurma) VALUES ('Alef', 'R1412', 1), ('Bruna', 'R9123',2), ('Bruno', 'R1832',1);

INSERT INTO responsavel(Nome, IdAluno) VALUES ('Nilson',1),('Patricia',2),('Ruben',3);

SELECT * FROM turma;

SELECT * FROM aluno;

SELECT * FROM responsavel;
