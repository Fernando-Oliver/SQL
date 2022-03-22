CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida; 

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    tipo varchar(255),
    matricula_curso varchar(255),
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
    id bigint auto_increment,
    nome varchar(255),
    requisito varchar (255),
    semestre int,
    preco int,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_curso;

INSERT INTO tb_categoria(tipo, matricula_curso)VALUES("Graduação","1");
INSERT INTO tb_categoria(tipo, matricula_curso)VALUES("Tecnólogo","2");

INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("Analise e Desenvolvimento de sistemas","ensino médio completo",4,35,2);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("ciência da computação","ensino médio completo",8,50,1);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("engenharia da computação","ensino médio completo",10,90,1);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("sistema da informação","ensino médio completo",4,5,2);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("administração","ensino médio completo",8,30,1);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("ciências contabeis","ensino médio completo",8,55,1);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("marketing","ensino médio completo",4,20,2);
INSERT INTO tb_curso(nome, requisito,semestre,preco,categoria_id)VALUES("gestão ambiental","ensino médio completo",4,15,2);

SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco > 3 AND preco < 60;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria on tb_categoria.id = tb_curso.id;