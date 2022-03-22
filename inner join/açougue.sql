CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint auto_increment,
linha varchar(255),
primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_carne(
id bigint auto_increment,
tipo varchar(255),
cor varchar(255),
preco int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

SELECT *FROM tb_carne;

INSERT INTO tb_categoria(linha)VALUES("Primeira");
INSERT INTO tb_categoria(linha)VALUES("Segunda");

INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("coxão mole","vermelha", 50, 1);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("coxão duro","vermelha",55,1);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("patinho","vermelha",60,1);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("alcatra","vermelha",50,1);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("paleta","vermelha escuro",450,2);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("acém","vermelha escuro",30,2);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("fraldinha","vermelha escuro",40,2);
INSERT INTO tb_carne(tipo,cor,preco,categoria_id)VALUES("peito","vermelha escuro",35,2);

SELECT * FROM tb_carne WHERE preco > 50;

SELECT * FROM tb_carne WHERE preco > 3 AND preco < 60;

SELECT * FROM tb_carne WHERE tipo LIKE "%c%";

SELECT * FROM tb_carne INNER JOIN tb_categoria on tb_categoria.id = tb_carne.id;