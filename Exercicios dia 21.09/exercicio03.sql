create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
setor varchar(255),
ativo boolean,
primary key(id)

);

insert into tb_categorias(tipo,setor,ativo) values ("Remedio","Drogaria",true);
insert into tb_categorias(tipo,setor,ativo) values ("Produto de higiene","Cuidados de Higiene",true);
insert into tb_categorias(tipo,setor,ativo) values ("Leite, formula","infantil",true);
insert into tb_categorias(tipo,setor,ativo) values ("Cremes demartologicos","Cuidados pessoais",true);
insert into tb_categorias(tipo,setor,ativo) values ("fralda","infantil",true);


create table tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
preco int,
tamanho varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Amoxilina","pfizer",39,"50 ml",1);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Lencinho","pampers",15,"100 lenços",5);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("creme dental","oralB",3,"50 gr",2);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("loratadina","pratidadunize",18,"30 ml",1);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Creme para rosto","nivea",48,"20 gr",4);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Farinha Lactea","nestle",12,"500 gr",3);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("dipirona","pfizer",7,"10 ml",1);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Cerazetti","pfizer",34,"30 comprimidos",1);

select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%b%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id where tb_categorias.id = 1;

















