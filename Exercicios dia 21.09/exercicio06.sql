create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
duracao varchar(255),
ativo boolean,
primary key(id)

);

insert into tb_categorias(tipo,duracao,ativo) values ("tecnologo","2 anos",true);
insert into tb_categorias(tipo,duracao,ativo) values ("bacharel","4 anos",true);
insert into tb_categorias(tipo,duracao,ativo) values ("profissionalizante","6 meses",true);
insert into tb_categorias(tipo,duracao,ativo) values ("extra curricular","6 horas",true);
insert into tb_categorias(tipo,duracao,ativo) values ("livre","55 horas",true);


create table tb_curso(
id bigint auto_increment,
nome varchar(255),
area varchar(255),
preco int,
presencial boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("administração","negocios",399,false,1);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("direito","humanas",1500,true,2);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("publicidade","humanas",450,false,2);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("secretariado","negocios",550,false,3);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("ilustração","artes",480,true,5);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("gitHub","tecnologia",380,false,4);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("gestão de negocios","negocios",120,true,1);
insert into tb_curso(nome,area,preco,presencial,categoria_id) value ("eletricista","profisional",340,true,3);

select * from tb_curso;
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categorias on tb_categorias.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categorias on tb_categorias.id = tb_curso.categoria_id where tb_categorias.id = 4;
