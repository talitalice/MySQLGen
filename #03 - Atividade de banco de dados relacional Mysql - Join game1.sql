CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint (6) AUTO_INCREMENT,
tipo varchar (20) NOT NULL,
forca bigint (10),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id bigint (6) AUTO_INCREMENT,
nome varchar (20) NOT NULL,
sexo varchar (2) NOT NULL,
pronome varchar (3),
personagens_id bigint,
PRIMARY KEY (id),
foreign key  (personagens_id) REFERENCES tb_classes (id)
);