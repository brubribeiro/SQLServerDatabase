CREATE DATABASE bdlivro;

USE bdlivro;

CREATE TABLE autor(
	IdAutor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE livro(
	IdLivro INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE escreve(
	IdEscreve INT IDENTITY PRIMARY KEY NOT NULL,
	IdAutor INT FOREIGN KEY REFERENCES autor(IdAutor),
	IdLivro INT FOREIGN KEY REFERENCES livro(IdLivro)	
);

INSERT INTO autor (Nome) VALUES ('Suzanne Collins'), ('J. K. Rowling'),('James Dashner');

INSERT INTO livro (Nome) VALUES ('Jogos Vorazes'), ('Harry Potter'),('Maze Runner');

INSERT INTO escreve (IdAutor, IdLivro) VALUES (3,3), (2,2),(1,1);

SELECT * FROM autor;

SELECT * FROM livro;

SELECT * FROM escreve;