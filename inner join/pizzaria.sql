Create DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
primary key(id)
);

CREATE TABLE tb_pizza(
 id bigint auto_increment,
 nome varchar(255),
 ingrediente1 varchar(255),
 ingrediente2 varchar(255),
 ingrediente3 varchar(255),
 preco int,
 categoria_id bigint,
 primary key(id),
 foreign key(categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_pizza;
SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(tipo) Values("Salgada");
INSERT INTO tb_categoria(tipo) Values("Doce");

INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Calabresa","Linguiça Calabresa", "Cebola","Azeitona",35,1);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Mussarela","Queijo Mussarela", "Molho de Tomate","Azeitona",40,1);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Toscana", "Mussarela e Calabresa", "Molho de Tomate", "Azeitona",50,1);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Frango","Frango e Catupiry", "Retirado","Azeitona",65,1);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Brigadeiro","Chocolate", "Granulado","Morango",55,2);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Beijinho","Doce de Leite", "Coco Ralado","",57,2);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Prestigio","Chocolate", "Coco Ralado","Pedaços de Chocolate",55,2);
INSERT INTO tb_pizza(nome,ingrediente1,ingrediente2,ingrediente3,preco,categoria_id)Values("Romeu e Julieta","Goiabada", "Mussarela","",65,2);

SELECT preco FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco >=29 AND preco <=60;

SELECT * FROM tb_pizza WHERE ingrediente1 LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.id;
