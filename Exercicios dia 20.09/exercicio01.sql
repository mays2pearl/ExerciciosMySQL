create database db_RH;

use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
matricula bigint not null,
salario decimal not null,
inicio varchar(50) not null,
ativo boolean,
primary key (id)
);

insert into tb_funcionarios(nome,matricula,salario,inicio,ativo) values ("Maria",234,1400,"16/07/2000",true)
insert into tb_funcionarios(nome,matricula,salario,inicio,ativo) values ("Maysa",567,4950,"16/07/2020",true)
insert into tb_funcionarios(nome,matricula,salario,inicio,ativo) values ("Leandro",395,2760,"10/11/2019",true)
insert into tb_funcionarios(nome,matricula,salario,inicio,ativo) values ("Joâo",419,1560,"04/01/2015",false)

select * from tb_funcionarios where salario >= 2000
select * from tb_funcionarios where salario <= 2000

update tb_funcionarios set ativo = false where id = 1

select * from tb_funcionarios
