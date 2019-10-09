CREATE DATABASE bdtime;

USE bdtime;

CREATE TABLE equipe(
	IdEquipe INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE jogador(
	IdJogador INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100),
	IdEquipe INT FOREIGN KEY REFERENCES equipe(IdEquipe)
);

INSERT INTO equipe(Nome) VALUES ('Equipe 1'),('Equipe 2'),('Equipe 3');

INSERT INTO jogador(Nome, IdEquipe) VALUES ('Ruben',1),('Lucas',2),('Nilson',3);

SELECT * FROM equipe;

SELECT * FROM jogador;