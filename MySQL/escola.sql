create database db_registroescola;

use db_registroescola;

create table tb_escola(
id bigint auto_increment,
nome varchar(255),
primary key(id)
);

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
cpf varchar(11) not null,
matriculaaluno int not null,
ano varchar(100) not null,
nota int not null,
escola_id bigint not null,
primary key(id),
foreign key(escola_id) references tb_escola(id)
);

select * from tb_escola;
select * from tb_alunos;

insert into tb_escola(nome) values ("Escola Estadual Amarim");
insert into tb_escola(nome) values ("Escola Estadual antonela");

insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Robson", "12345678901", 1, " 8° Série", 7, 1);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Anderson", "09876543210", 2, " 8° Série", 8, 1);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Ricardo", "23456789012", 1, " 8° Série", 6, 1);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Diogo", "34567890123", 1, " 8° Série", 9, 1);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Heitor", "45678901234", 1, " 1° ano", 6, 2);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Abner", "56789012345", 1, " 1° ano", 7, 2);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Salah", "67890123456", 5, " 1° ano", 9, 2);
insert into tb_alunos(nome, cpf, matriculaaluno, ano, nota, escola_id) values ("Mané", "78901234567", 7, " 1° ano", 8, 2);

select nome, nota from tb_alunos where nota > 7;
select nome, nota from tb_alunos where nota < 7;

update tb_alunos set nome="Rafaela" where id =3;