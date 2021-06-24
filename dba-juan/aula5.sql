DROP DATABASE hcode;

CREATE DATABASE hcode;

USE hcode;

CREATE TABLE if not exists tb_datas (
	id_data 		INT UNSIGNED ZEROFILL,
    data_inicio		DATE,
    data_termino	DATETIME,
    ano 			YEAR
);

INSERT INTO tb_datas VALUES(1,'2022-02-20','2022-07-30 12:30:12','2020');

CREATE TABLE tb_funcionarios(
	id_func		INT SIGNED,
    nome_func	VARCHAR(200),
    email_func	VARCHAR(250),
    cep_func	char(9),
    sexo_func	enum('M','F')
);

SELECT * FROM tb_datas;

INSERT INTO tb_funcionarios VALUES(
	-10,'Juan Pablo','juanoliveira110@gmail.com','01311-100','M'
);

SELECT * FROM tb_funcionarios;
