CREATE DATABASE bdempresacea;

USE bdempresacea;

CREATE TABLE localizacao(
	IdLocal INT IDENTITY PRIMARY KEY NOT NULL,
	Endereco VARCHAR(200)
);

CREATE TABLE projeto(
	IdProjeto INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL
);

CREATE TABLE empregado(
	IdEmpregado INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Rg CHAR(9) NOT NULL,
	IdDepartamento INT FOREIGN KEY REFERENCES departamento(IdDepartamento)
);

CREATE TABLE dependente(
	IdDependente INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	Idade INT,
	IdEmpregado INT FOREIGN KEY REFERENCES empregado(IdEmpregado)
);

CREATE TABLE registroprojeto(
	IdRegistro INT IDENTITY PRIMARY KEY NOT NULL,
	IdProjeto INT FOREIGN KEY REFERENCES projeto(IdProjeto),
	IdEmpregado INT FOREIGN KEY REFERENCES empregado(IdEmpregado)
);

CREATE TABLE enderecos(
	IdEndereco INT IDENTITY PRIMARY KEY NOT NULL,
	IdDepartamento INT FOREIGN KEY REFERENCES departamento(IdDepartamento),
	IdLocal INT FOREIGN KEY REFERENCES localizacao(IdLocal)
);

INSERT INTO localizacao (Endereco) VALUES ('Santa Cecília'), ('Lapa'), ('Pinheiros');

INSERT INTO departamento (Nome, IdLocal) VALUES ('Financeiro'), ('Administrativo'), ('Manutenção');

INSERT INTO empregado (Nome, Rg, IdDepartamento) VALUES ('Alef', '124324349', 2), ('Bruna', '879873621', 3), ('Bruno', '432532658', 1);

INSERT INTO dependente (Nome, Idade, IdEmpregado) VALUES ('Patricia', 25, 1), ('Joselaine', 23, 2), ('Yasmin', 23, 3);

INSERT INTO projeto (Nome) VALUES ('Projeto 1'), ('Projeto 2'), ('Projeto 3');

INSERT INTO registroprojeto (IdProjeto, IdEmpregado) VALUES (2,3), (3,2), (1,1);

INSERT INTO enderecos (IdDepartamento, IdLocal) VALUES (3,1), (2,3), (1,2);

SELECT * FROM localizacao;

SELECT * FROM departamento;

SELECT * FROM dependente;

SELECT * FROM empregado;

SELECT * FROM projeto;

SELECT * FROM registroprojeto;

SELECT * FROM enderecos;