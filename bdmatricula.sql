CREATE DATABASE bdmatricula;

USE bdmatricula;

CREATE TABLE curso(
	IdCurso INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);

CREATE TABLE candidato(
	IdCandidato INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdCurso INT FOREIGN KEY REFERENCES curso(IdCurso)
);

INSERT INTO curso (Nome) VALUES ('Desenvolvimento');
INSERT INTO curso (Nome) VALUES ('Redes');
INSERT INTO curso (Nome) VALUES ('Code XP');

INSERT INTO candidato (Nome, IdCurso) VALUES ('Alef', 2);
INSERT INTO candidato (Nome, IdCurso) VALUES ('Bruna', 3);
INSERT INTO candidato (Nome, IdCurso) VALUES ('Bruno', 1);

SELECT * FROM curso;
SELECT * FROM candidato;