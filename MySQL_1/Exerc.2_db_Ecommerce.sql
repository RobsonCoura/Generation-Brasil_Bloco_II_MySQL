create database ecommerce;

use ecommerce;

create table produtos(
id_produto bigint auto_increment,
produto varchar (255)not null,
quantidade int (255) not null,
tipo varchar (255) not null,
setor varchar(255) not null,
preço decimal (7, 2) not null,
primary key (id_produto)
);

insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Sapato", 20, "Social", "Masculino", 150.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Sapato", 37, "Social", "Masculino", 100.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Sapato", 30, "Social", "Feminino", 150.90);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Sapato", 25, "Social", "Feminino", 190.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Tenis", 52, "Social", "Masculino", 500.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Tenis", 33, "Esporte", "Masculino", 600.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Tenis", 24, "Esporte", "Feminino", 250.00);
insert into produtos(produto, quantidade, tipo, setor, preço) 
values ("Tenis", 30, "Esporte", "Feminino", 420.00);

select * from produtos where preço > 500;

select * from produtos where preço < 500;

update produtos set preço = 499.99 where id_produto = 8;

/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/