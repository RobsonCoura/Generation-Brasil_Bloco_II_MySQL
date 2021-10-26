create database db_pizzaria_QueroMais;

use db_pizzaria_QueroMais;

create table tb_categoria(
	id bigint auto_increment,
	tamanho enum ("Brotinho", "Média", "Familia"),
    tipo enum ("Doce", "Salgada"),
	id_pizza bigint,
     
	primary key(id)
    );
    
    create table tb_pizza(
	id_pizza bigint auto_increment,
    sabor_pizza varchar(35) not null,
    preco decimal(10,2) check (preco > 0),
    comBorda enum ("Catupiry", "Cheddar", "Cream Cheese", "Nenhum"),
    stt boolean,
    id_categoria bigint,
        
    primary key (id_pizza),
    foreign key(id_categoria) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria (tamanho, tipo) 
	values  ("Brotinho", "Salgada"),
			("Média", "Doce"),
            ("Familia", "Salgada"),
            ("Brotinho", "Doce"),
            ("Média", "Salgada");
            
        select * from tb_pizza;
        
  insert into tb_pizza (sabor_pizza, preco, comBorda, stt, id_categoria) 
	values  ("Mussarela", 34.00, "Nenhum", true, 1),
			("Frango com Catupiry", 42.00, "Cheddar", true, 3),
            ("Calabresa", 45.00, "Cream Cheese", false, 5),
            ("Romeu e Julietta", 40.00, "Nenhum", true, 2),
            ("Chocolate com Cereja", 55.00, "Nenhum", true, 4),
            ("Nordestina", 45.00, "Catupiry", true, 3),
            ("Lombo com Cheddar", 55.00, "Cream Cheese", true, 3),
            ("Portuguesa", 42.00, "Catupiry", false, 1);     
            
        select * from tb_pizza where preco < 45.00;
        select * from tb_pizza where preco between 29.00 and 60.00;
        select * from tb_pizza where sabor_pizza like "C%";
        
      select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria
	and tb_pizza.stt = true
	order by tb_pizza.id_pizza;
    
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
	and tb_categoria.tipo = "Doce";