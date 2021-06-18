DROP DATABASE hcode;

CREATE DATABASE hcode;

USE hcode;

CREATE TABLE IF NOT EXISTS tb_funcionarios(
	id 				INT UNSIGNED ZEROFILL,
	nome_func		VARCHAR(200),
    email_func		VARCHAR(250),
    vlr_sal_func 	DECIMAL(10,2)
);

INSERT INTO tb_funcionarios VALUES(1,'Juan Pablo','juanoliveira110@gmail.com',5000.00);
#INSERT INTO tb_funcionarios VALUES(2,'Maria pablo','mariagomes@gmail.com',9000.00);

SELECT * FROM tb_funcionarios;

DROP TABLES tb_funcionarios;