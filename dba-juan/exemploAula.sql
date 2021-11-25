DROP DATABASE EasyGames;

CREATE DATABASE EasyGames;

USE EasyGames; # PARA USAR O DB RECENCRIADO

CREATE TABLE items (
	item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	item_name VARCHAR(20) NOT NULL,
	item_atk INT(3) NOT NULL,
	item_def INT(3) NOT NULL,
	item_price INT(3) NOT NULL
);

CREATE TABLE players (
	player_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	player_name VARCHAR(20) NOT NULL,
	player_life INT(3) NOT NULL,
	player_mana INT(3) NOT NULL,
	player_atk INT(3) NOT NULL,
	player_def INT(3) NOT NULL,
	player_money INT(3) NOT NULL,
	item_id INT,
	FOREIGN KEY (item_id) REFERENCES items (item_id)
);

CREATE TABLE enemies (
	enemy_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	enemy_name VARCHAR(20) NOT NULL,
	enemy_life INT(3) NOT NULL,
	enemy_mana INT(3) NOT NULL,
	enemy_atk INT(3) NOT NULL,
	enemy_def INT(3) NOT NULL,
	enemy_money INT(3) NOT NULL,
	item_id INT,
	FOREIGN KEY (item_id) REFERENCES items (item_id)
);

DROP TABLES dp_central;  # USADO APENAS PARA APAGAR ARQUIVOS

INSERT INTO tb_datas VALUES(1,'2022-02-20','2022-07-30 12:30:12','2020');

SELECT * FROM tb_datas;

SELECT * FROM tb_funcionarios;
