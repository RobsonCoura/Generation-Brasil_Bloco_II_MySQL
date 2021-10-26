create database db_rh;

use db_rh;

create table industria(
cpf bigint not null,
nome varchar (255) not null,
setor varchar(255),
funcao varchar(255),
salario decimal(7, 2) not null,
primary key (cpf)

);

insert into industria(cpf, nome, setor, funcao, salario) value (020658547, "Eronildo Bento", "TI", "Desenvolvedor Full Stack Java", 4000.00);
insert into industria(cpf, nome, setor, funcao, salario) value (145783269, "Ana Maria", "RH", "Assistente Administrativo", 3000.00);
insert into industria(cpf, nome, setor, funcao, salario) value (0102478516, "Robson Brito", "Manutenção", "Ajudante Geral", 1500.00);
insert into industria(cpf, nome, setor, funcao, salario) value (0214528963, "Henrique Neves", "Financeiro", "Estagiario", 1100.00);
insert into industria(cpf, nome, setor, funcao, salario) value (0101278530, "Benedito Santos", "Compras", "Diretor", 9000.00);

select * from industria where salario > 2000;
select * from industria where salario < 2000;

update industria set salario = 7000.00 where cpf= 020658547;

/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade./*