create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
matricula bigint not null,
notaMedia decimal not null,
serie varchar(50) not null,
aprovado boolean,
primary key (id)
);

insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Maysa",2344567,9.5,"3° Ano",true)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Leandro",2124456,7.5,"1° Ano",true)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Perola",5567567,8.0,"3° serie",true)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Mirella",73434167,8.5,"pre 1",true)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Maria",3456567,9.5,"3° Ano",false)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("jose",2356789,9.0,"7° serie",false)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Laura",2786954,4.0,"2° Ano",true)
insert into tb_alunos(nome,matricula,notaMedia,serie,aprovado) values ("Lucas",67899167,5.0,"1° Ano",true)


select * from tb_alunos where notaMedia >= 7
select * from tb_alunos where notaMedia <= 7

update tb_alunos set serie = "3° Ano" where id = 7

select * from tb_alunos