CREATE DATABASE bdmercado;

USE bdmercado;

CREATE TABLE cliente(
	IdCliente INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);
CREATE TABLE produto(
	IdProduto INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE compra(
	IdCompra INT IDENTITY PRIMARY KEY NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES cliente(IdCliente),
	IdProduto INT FOREIGN KEY REFERENCES produto(IdProduto)
);

INSERT INTO  cliente (Nome) VALUES ('Yasmin'),('Bruna'),('Patricia');

INSERT INTO  produto (Nome) VALUES ('Arroz'),('Feijão'),('Carne');

INSERT INTO  compra (IdCliente, IdProduto) VALUES (2,3),(3,2),(1,1);

SELECT * FROM cliente;

SELECT * FROM produto;

SELECT * FROM compra;