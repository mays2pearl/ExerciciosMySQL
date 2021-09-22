create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
setor varchar(255),
ativo boolean,
primary key(id)

);

insert into tb_categorias(tipo,setor,ativo) values ("Cimento","construção",true);
insert into tb_categorias(tipo,setor,ativo) values ("Tinta","acabamento",true);
insert into tb_categorias(tipo,setor,ativo) values ("quadro","decoração",true);
insert into tb_categorias(tipo,setor,ativo) values ("lampada","iluminação",true);
insert into tb_categorias(tipo,setor,ativo) values ("fio","eletricos",true);


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

insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Cinzento","contruLegal",39,"50 Kg",1);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Led","positivo",15,"1 unidade",5);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Tinta fosca lavavel","coral",45,"5 litos",2);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("50cinza","contrulegal",55,"50 kg",1);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("lustre","dunni",480,"1 unidade",4);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("Painel","forarte",380,"1 unidade",3);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("tinta brilhante","coral",120,"50 ltros",2);
insert into tb_produto(nome,marca,preco,tamanho,categoria_id) value ("lanterna","ctron",34,"1 unidade",4);

select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id where tb_categorias.id = 4;
