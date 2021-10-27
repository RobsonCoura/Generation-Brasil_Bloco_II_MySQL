create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
classe varchar(35) not null,
entrada timestamp,

primary key (id)
);

create table tb_produto (
id_produto bigint auto_increment,
nome varchar(35) not null,
marca varchar(35) not null,
dimensoes varchar(35) not null,
preco decimal (6,2) check (preco >0),

fk_categoria bigint,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria (classe, entrada)
	values	("Construção Civil", current_timestamp()),
			("Hidráulica", current_timestamp()),
            ("Elétrico", current_timestamp()),
            ("Madeira", current_timestamp());
            
   select * from tb_produto;        
   
   insert into tb_produto(nome, marca, dimensoes, preco, fk_categoria)
	values	("Cimento Cauê", "Exato", "50 Kg", 27.90, 1),
			("Adaptador para caixa D'Água Soldável", "Plastilit", 11.90, 2),
            ("Joelho 90° soldável", "Amanco", "25 mm", 0.73, 2),
            ("Fio rigído Vermelho 750v 10 m", "Tekfio", "10 mm", 159.90, 3),
            ("Plafon Decorativo Octogonal", "Trioplast", "15 x 15 cm", 13.42, 3),
            ("Folha de Porta de Giro Colmeia", "Eucaplac", "2.10 x 0.8 m", 156.99, 4),
            ("Prateleira de Madeira e Flutuante", "Rusty", "95 cm", 102.99, 4);
            
            select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where marca like "Ti%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria
	order by fk_categoria;
    
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria
	where tb_categoria.classe like "San%";
