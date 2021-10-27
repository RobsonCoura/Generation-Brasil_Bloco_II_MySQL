create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
curso enum ("Java", "C#", "SQL"),
tempo varchar(35) not null,

primary key (id)
);

create table tb_curso(
id_curso bigint auto_increment,
alune varchar(35) not null,
turma char,
nota decimal (4,2) check (nota >= 0),
final enum ("A", "R"),

fk_categoria bigint,
primary key (id_curso),
foreign key (fk_categoria) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria(curso, tempo)
	values	("Java", "2 ano"),
			("C#", "1 meses"),
            ("SQL", "6 meses");
            
         select * from tb_curso;
         
 insert into tb_curso(alune, turma, nota, final, fk_categoria)
	values	("Zeca", "J", 9.9, "A", 1),
			("Felipe", "U", 8.5, "A", 3),
            ("Manoel", "P", 5.0, "R", 2),
            ("Kaike", "U", "10.0", "A", 3),
            ("Zilda", "J", 5.8, "R", 1),
            ("Kelvin", "P", 7.5, "A", 2),
            ("Bia", "P", 10.0, "A", 2);      
            
      select * from tb_curso where nota > 9;
select * from tb_curso where nota between 5 and 7;
select * from tb_curso where alune like "%i%";

select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.fk_categoria
	order by nota desc;
    
select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.fk_categoria
	where tb_curso.final = "A"
    order by tb_curso.nota desc;
          