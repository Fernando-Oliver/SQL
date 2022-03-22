CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
remedio varchar(255),
preco int,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(categoria)VALUES("Referência");
INSERT INTO tb_categoria(categoria)VALUES("Manipulado");
INSERT INTO tb_categoria(categoria)VALUES("Similar");
INSERT INTO tb_categoria(categoria)VALUES("Genérico");
INSERT INTO tb_categoria(categoria)VALUES("Homeopático");

INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Aspirina",35,1);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Policosanol",30,2);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Sonridor",45,3);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Tylenol",50,3);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Amoxilina",10,4);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Ampcilina",5,4);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Bacinantrat",3,4);
INSERT INTO tb_produto(remedio,preco,categoria_id)VALUES("Gripemed",25,5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco >=50;

SELECT * FROM tb_produto WHERE preco > 3 AND preco < 60;

SELECT * FROM tb_produto WHERE remedio LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;