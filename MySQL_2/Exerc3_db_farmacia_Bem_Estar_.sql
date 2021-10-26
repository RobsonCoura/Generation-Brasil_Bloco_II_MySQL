create database db_farmacia_Bem_Estar;

use db_farmacia_Bem_Estar;

create table tb_categoria (
	id_categoria bigint auto_increment,
    tarja varchar(35) not null,
	receita boolean,  -- true ou false
    
    primary key (id_categoria)
);

create table tb_categoria (
	id_categoria bigint auto_increment,
    tarja varchar(35) not null,
	receita boolean,  
    
    primary key (id_categoria)
);

create table tb_produto (
	id_produto bigint auto_increment,
    nome varchar (35) not null,
	laboratorio varchar(35) not null,
	preco real,
	estoque int (3),
    
    key_categoria bigint,
    primary key (id_produto),
    foreign key (key_categoria) references tb_categoria(id_categoria)    
);
select * from tb_categoria;


insert into tb_categoria (tarja, receita) 
		values  ("Tarja Preta", True),
				("Tarja Vermelha com receita", true),
                ("Tarja Vermelha sem receita", true),
                ("Sem Tarja", false),
                ("Tarja Amarela (Genérico)", null);	
                
     select * from tb_produto;           

insert into tb_produto (nome, laboratorio, preco, estoque, key_categoria)
	values  ("Sibutramina 15mg Genérico ", "EMS", 44.99, 60, 1),
			("Alprazolam 0,5mg", "Legrand", 6.18, 105, 2),
			("Alprazolam 25mg", "EMS", 6.48, 35, 1),
            ("Acetilcisteína 600mg", "Eurofarma", 24.47, 90, 5),
            ("Bromazepam 3mg Medley 30", "Medley", 17.99, 35, 2),
            ("Neosaldina 30 Drágeas", "", 35.89, 60, 4),
            ("Cloridrato De Fluoxetina 20mg", "Teuto", 25.73 ,79, 3),
            ("Cloridrato de Bromexina 8mg/5mL", "Medley", 21.23, 52, 5);

select * from tb_produto where preco > 40.00;
select * from tb_produto where preco < 35.00;

select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "A%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	order by tb_produto.nome;
    
    
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tarja = "Tarja Preta";



select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tarja = "Tarja Vermelha com Retenção";
    
    
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tarja = "Tarja Vermelha sem Retenção";
    
        
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tarja like "%Gen%";


select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.tarja like "Sem%";


