CREATE DATABASE bdcamiseta

USE bdcamiseta;

CREATE TABLE marca(
	IdMarca INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE cor(
	IdCor INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30)
);
CREATE TABLE tamanho(
	IdTamanho INT IDENTITY PRIMARY KEY NOT NULL,
	Tamanho VARCHAR(5)
);

CREATE TABLE camiseta(
	IdCamiseta INT IDENTITY PRIMARY KEY NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES marca(IdMarca),
	IdCor INT FOREIGN KEY REFERENCES cor(IdCor),
	IdTamanho INT FOREIGN KEY REFERENCES tamanho(IdTamanho),
);

INSERT INTO marca(Nome) VALUES ('Adidas'),('Nike'),('Puma');

INSERT INTO cor(Nome) VALUES ('Preta'),('Branca'),('Azul');

INSERT INTO tamanho(Tamanho) VALUES ('P'),('M'),('G'),('GG');

INSERT INTO camiseta(IdMarca,IdCor,IdTamanho) VALUES (1,2,3),(3,2,3),(2,2,4),(1,3,1),(3,3,3),(1,1,1);

--Alterando nome da primeira marca
UPDATE marca SET
	Nome = 'GAP'
WHERE IdMarca = 1;

--Alterando nome da terceira marca
UPDATE marca SET
	Nome = 'Vans'
WHERE IdMarca = 3;

--Deletando o maior id da tabela camiseta
DELETE FROM camiseta WHERE IdCamiseta = (SELECT MAX(IdCamiseta) FROM camiseta);

SELECT * FROM camiseta;

SELECT * FROM marca;

SELECT * FROM cor;

SELECT * FROM camiseta
	INNER JOIN marca ON marca.IdMarca = camiseta.IdMarca

SELECT * FROM camiseta
	INNER JOIN cor ON cor.IdCor = camiseta.IdCor

SELECT * FROM camiseta
	INNER JOIN tamanho ON tamanho.IdTamanho = camiseta.IdTamanho


ALTER TABLE marca ADD Quant_Loja VARCHAR(20);
    
ALTER TABLE marca ADD DataCriacao DATE;

ALTER TABLE camiseta ADD LavarMaquina VARCHAR(20);

ALTER TABLE tamanho ADD Medidas VARCHAR(20);

UPDATE marca SET
	Quant_Loja = '3005',
	DataCriacao = '1969-08-21'
WHERE IdMarca = 1;

UPDATE marca SET
	Quant_Loja = '4000',
	DataCriacao = '1964-01-25'
WHERE IdMarca = 2;

UPDATE marca SET
	Quant_Loja = '2000',
	DataCriacao = '1966-03-16'
WHERE IdMarca = 2;

UPDATE camiseta SET
	LavarMaquina = 'Sim'

UPDATE tamanho SET
	Medidas = '30x30'
WHERE IdTamanho = 1;

UPDATE tamanho SET
	Medidas = '40x40'
WHERE IdTamanho = 2;

UPDATE tamanho SET
	Medidas = '50x50'
WHERE IdTamanho = 3;

UPDATE tamanho SET
	Medidas = '60x60'
WHERE IdTamanho = 4;