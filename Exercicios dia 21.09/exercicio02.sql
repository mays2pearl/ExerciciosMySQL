create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
estilo  varchar(255),
ativo boolean,
primary key(id)

);

insert into tb_categorias(tipo,estilo,ativo) values ("pizza","Gourmet",true);
insert into tb_categorias(tipo,estilo,ativo) values ("bebida","normal",true);
insert into tb_categorias(tipo,estilo,ativo) values ("lanche","normal",true);
insert into tb_categorias(tipo,estilo,ativo) values ("sobremesa","Gourmet",true);
insert into tb_categorias(tipo,estilo,ativo) values ("porcao","normal",true);


create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
ingredientes varchar(255),
preco int,
tamanho varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Mussarela","mussarela, molho",39,"grande",1);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Batata frita","batatas, cheddar",18,"grande",5);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Refrigerante","guarana",7,"2 litros",2);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Portuguesa","mussarela, presunto, ovos, molho",39,"grande",1);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Açai","Açai, banana",12,"pequeno",4);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Hamburguer","hamburguer, queijo, tomte,alface",12,"normal",3);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("calabresa","calabresa, mcebola",35,"broto",1);
insert into tb_pizza(nome,ingredientes,preco,tamanho,categoria_id) value ("Frango","frango, catupiry",33,"grande",1);

select * from tb_categorias;
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id;
select * from tb_pizza inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id where tb_categorias.id = 2;
