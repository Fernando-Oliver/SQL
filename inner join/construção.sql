CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida; 

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    categoria varchar(255),
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
    id bigint auto_increment,
    produto varchar(255),
    cor varchar (255),
    quantidade int,
    preco int,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_curso;

INSERT INTO tb_categoria(categoria)VALUES("aço");
INSERT INTO tb_categoria(categoria)VALUES("areia");
INSERT INTO tb_categoria(categoria)VALUES("cimento");
INSERT INTO tb_categoria(categoria)VALUES("concreto");
INSERT INTO tb_categoria(categoria)VALUES("madeira");

INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("vergalhão CA-50","cinza",10,55,1);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("arame","cinza",10,25,1);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("saco de areia","amarelada",10,20,2);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("saco de cimento","cinza",10,60,3);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("bloco de concreto","cinza",10,70,4);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("chapa de MDF","marrom",10,40,5);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("compensado naval","bege",10,15,5);
INSERT INTO tb_produto(produto, cor,quantidade,preco,categoria_id)VALUES("compensado naval pinus","bege",10,15,5);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco > 3 AND preco < 60;

SELECT * FROM tb_produto WHERE produto LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;