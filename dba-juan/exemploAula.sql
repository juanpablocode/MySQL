DROP DATABASE PokemonGo;

CREATE DATABASE PokemonGo;

USE PokemonGo; # PARA USAR O DB RECENCRIADO

CREATE TABLE pokemon (
	pkm_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	pkm_name VARCHAR(20) NOT NULL,
	pkm_atk INT(3) NOT NULL,
	pkm_def INT(3) NOT NULL,
	pkm_price INT(3) NOT NULL
);

CREATE TABLE trainers (
	player_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	player_name VARCHAR(20) NOT NULL,
	player_life INT(3) NOT NULL,
	player_money INT(3) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES items (pkm_id)
);

CREATE TABLE challenging (
	enemy_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	enemy_name VARCHAR(20) NOT NULL,
	enemy_life INT(3) NOT NULL,
	enemy_money INT(3) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES items (pkm_id)
);

CREATE TABLE team_rocket (
	team_rocket_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	enemy_name VARCHAR(20) NOT NULL,
	enemy_life INT(3) NOT NULL,
	enemy_money INT(3) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES items (pkm_id)
);

DROP TABLES trainers;  # USADO APENAS PARA APAGAR TABELAS

INSERT INTO trainers VALUES(1,'2022-02-20','2022-07-30 12:30:12','2020');

SELECT * FROM trainers;

SELECT * FROM trainers;
