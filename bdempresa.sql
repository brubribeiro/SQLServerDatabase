CREATE DATABASE bdempresa;

USE bdempresa;

CREATE TABLE diretor(
	IdDiretor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdDiretor INT FOREIGN KEY REFERENCES diretor(IdDiretor)
);

INSERT INTO diretor(Nome) VALUES ('Alef'),('Bruna'),('Bruno');

INSERT INTO departamento(Nome, IdDiretor) VALUES ('Financeiro',1),('Administração',2),('Manutenção',3);

SELECT * FROM diretor;

SELECT * FROM departamento;