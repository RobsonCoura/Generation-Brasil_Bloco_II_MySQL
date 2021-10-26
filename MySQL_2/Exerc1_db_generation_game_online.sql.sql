create database db_generation_game_online;

use db_generation_game_online;


create table tb_classe (
	id_classe bigint auto_increment, 
	Duelistas varchar (35) not null,
	vida int,
    
    primary key (id_classe)  
);

create table tb_personagem (
	id_personagem bigint(3) auto_increment, 
    nome varchar(35) not null,                 
    Attack int (35) not null,   
	defense int (35) not null, 
    shield int,
    
	key_classe bigint,
    primary key (id_personagem),       
    foreign key (key_classe) references tb_classe(id_classe) 
); 

select * from tb_classe; 

insert into tb_classe (Duelistas, vida) 
	values  ("Yugi Muto", 3000),    
			("Reiji Akaba", 3000),          
			("Seto Kaiba", 3000),             
			("Joey Wheeler", 3000);    
            
   select * from tb_personagem;       
   
   insert into tb_personagem (nome, Attack, Defense, shield, key_classe)
	values 	("Mago Negro", 2500, 2100, 50, 3),
			("Castor Guerreiro", 1200,1500, 0, 1),
			("O Cavaleiro da Rainha", 1500, 1600, 50, 4),
			("Sósia da Rainha", 350, 300, 25, 2),
			("Bebê Gragão", 1200, 700, 50, 3),
            ("Gragão Negro", 2400, 2000, 25, 1),
            ("Kishin", 800, 500, 0, 4);
            
         select * from tb_personagem where defense order by defense desc; 
         select * from tb_personagem where defense order by defense;
         
         select * from tb_personagem where defense > 25;
         select * from tb_personagem where defense between 10 and 30;
         
         select * from tb_personagem where nome like "S%";
         
         select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe
	order by id_personagem;
    
    select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe 
	where tb_classe.Duelistas = "Seto Kaiba" 
	order by id_personagem;
    
    select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe 
	where tb_classe.Duelistas = "Yugi Muto" 
	order by id_personagem;
    
    select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe 
	where tb_classe.Duelistas = "Joey Wheeler" 
	order by id_personagem;
    
    select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe 
	where tb_classe.Duelistas = "Reiji Akaba" 
	order by id_personagem;
