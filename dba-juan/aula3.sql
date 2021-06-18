DROP DATABASE banco;

DROP DATABASE hcode;

CREATE DATABASE hcode;

USE hcode;

CREATE TABLE tb_funcionarios ( 
	id INT,
    nome  VARCHAR(100),
    salario DECIMAL(8,2),
    admissao DATE,
    sexo ENUM('F','M'),
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_funcionarios VALUES(1,'Juan Pablo',1200.00,'2021-04-19','m', DEFAULT);
# INSERT INTO tb_funcionarios VALUES(1,'Juan Pablo',1200.00,'2021-04-19','m', NULL);

SELECT * FROM tb_funcionarios;