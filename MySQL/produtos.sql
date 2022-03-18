create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
marca varchar(100) not null,
modelo varchar(100) not null,
memoria int not null,
ram int not null,
preco int not null,
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Samsung", "A52s+", 128, 8, 2000);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Apple", "iPhone 12", 256, 4, 4209);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Apple", "iPhone 13", 512, 4, 5199);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Xiaomi", "Redmi Note 8", 64, 4, 1380);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Xiaomi", "Redmi Note 9", 128, 4, 1999);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Motorola", "Edge 30", 256, 12, 5849);
insert into tb_produtos(marca, modelo, memoria, ram, preco) values("Motorola", "Moto G200", 256, 8, 3599);

select modelo, preco from tb_produtos where preco > 500;
select modelo, preco from tb_produtos where preco <= 500;
update tb_produtos set preco = 3500 where id = 9;