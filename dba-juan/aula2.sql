CREATE DATABASE if not exists hcode;

USE hcode;

CREATE TABLE clientes (
	id INT, 
    nome VARCHAR(100)
);

INSERT INTO clientes VALUES(1,'juan');

SELECT * FROM clientes;


DROP database hcode;