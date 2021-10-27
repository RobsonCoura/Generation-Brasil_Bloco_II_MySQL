create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
animal varchar(35) not null,
data_fab timestamp,

primary key (id)
);

create table tb_produto(
id_produto bigint auto_increment,
tipo varchar(35) not null,
marca varchar(35) not null,
peso decimal (6,3) check (peso > 0),
preco decimal (5,2) check (preco >0),


fk_categoria bigint,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria (id)

);

select * from tb_categoria;

insert into tb_categoria (animal, data_fab) 
	values	("Bovino", current_timestamp()),
			("Aves", current_timestamp()),
            ("Suína", current_timestamp()),
			("Peixe", current_timestamp()),
            ("Carneiro", current_timestamp());
		
select * from tb_produto;  

insert into tb_produto(tipo, marca, peso, preco, fk_categoria)
	values	("Coxa SobreCoxa", "Seara", 1, 14.90, 1),
			("Patino Moído", "FriBoi", 1, 32.99, 2),
            ("Filé Tilapia", "Costa Sul", 0.800, 35.60, 4),
            ("Costela de Cordeiro", "Patagônia Swift", 1.2, 59.97, 5),
            ("Largarto-Pedaço", "Angus", 2.5, 115.70, 2),
            ("Bisteca Suína", "Sadia", 1, 19.99, 3),
            ("Linguiça de Frango", "Korin", 0.800, 17.29, 1),
            ("Filé de Merluza", "Pampa Fish", 0.800, 26.15, 4);

select * from tb_produto where preco > 50;
select * from tb_produto where preco > 50; 

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria
	order by tb_produto.fk_categoria;
    
    select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria
	where tb_categoria.animal = "Bovino";