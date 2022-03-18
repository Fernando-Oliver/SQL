use db_RH;

Create table tb_funcionario(
       id bigint auto_increment,
       nome varchar(255) not null,
       cpf char (11) not null,
       email varchar(255) not null,
       telefone char(11) not null,
       salario int,
       primary key(id)
);

select * from tb_funcionario;



insert into tb_funcionario(nome, cpf, email, telefone, salario) values("Joãozinho", "1234567890", "joãomatos@gmail.com","11913468907",1500);
insert into tb_funcionario(nome, cpf, email, telefone, salario) values("Cesar", "109876543", "daiacesaroqueedecesar@gmail.com","11909865432",2000);
insert into tb_funcionario(nome, cpf, email, telefone, salario) values("rrenan", "36798516500", "rrenan@gmail.com","11935689001",2500);
insert into tb_funcionario(nome, cpf, email, telefone, salario) values("alisson", "47889012340", "alisson18@gmail.com","11945890124",1250);
insert into tb_funcionario(nome, cpf, email, telefone, salario) values("erick", "12834599910", "erickmagal@gmail.com","11909856439",3500);

select nome, salario from  tb_funcionario where salario > 2000;
select nome, salario from  tb_funcionario where salario <2000;
update tb_funcionario set nome= "Renan", email = "renan@gmail.com" where id=3;