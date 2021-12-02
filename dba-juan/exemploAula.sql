# DROP DATABASE PokemonGo; # APAGAR BANCO

CREATE DATABASE PokemonGo; # CRIAR BANCO

USE PokemonGo; # PARA USAR O DB RECENCRIADO

# SHOW TABLES; # MOSTRA AS TABELAS

CREATE TABLE pokemon (
	pkm_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	pkm_name VARCHAR(20) NOT NULL,
    pkm_life INT(4) NOT NULL,
	pkm_atk INT(3) NOT NULL,
	pkm_def INT(3) NOT NULL,
	pkm_price INT(3) NOT NULL
);

INSERT INTO pokemon VALUES(default,'Pikachu',400,80,50,500);

INSERT INTO pokemon VALUES(default,'Onix',350,90,40,510);
SELECT * FROM pokemon;
# DROP TABLES pokemon;  # USADO APENAS PARA APAGAR TABELAS

CREATE TABLE trainers (
	player_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	player_name VARCHAR(20) NOT NULL,
	player_life INT(3) NOT NULL,
	player_money INT(4) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES pokemon (pkm_id)
);

INSERT INTO trainers VALUES(default,'JUAN',1000,1200,1);
SELECT * FROM trainers;
# DROP TABLES trainers;  # USADO APENAS PARA APAGAR TABELAS

CREATE TABLE challenging (
	enemy_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	enemy_name VARCHAR(20) NOT NULL,
	enemy_life INT(3) NOT NULL,
	enemy_money INT(3) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES pokemon (pkm_id)
);
INSERT INTO challenging VALUES(default,'KLEBER',1000,200,2);
SELECT * FROM challenging;
# DROP TABLES challenging;  # USADO APENAS PARA APAGAR TABELAS

CREATE TABLE team_rocket (
	team_rocket_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	enemy_name VARCHAR(20) NOT NULL,
	enemy_life INT(3) NOT NULL,
	enemy_money INT(3) NOT NULL,
	pkm_id INT,
	FOREIGN KEY (pkm_id) REFERENCES pokemon (pkm_id)
);

INSERT INTO team_rocket VALUES(default,'GENNA',500,700,2);
SELECT * FROM team_rocket;
# DROP TABLES team_rocket;  # USADO APENAS PARA APAGAR TABELAS
