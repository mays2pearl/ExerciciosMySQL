create database db_cidade_das_carnes2;

use db_cidade_das_carnes2;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
regiao varchar(255),
ativo boolean,
primary key(id)

);

insert into tb_categorias(tipo,regiao,ativo) values ("bovino","nordeste",true);
insert into tb_categorias(tipo,regiao,ativo) values("suino","sudeste",true);
insert into tb_categorias(tipo,regiao,ativo) values ("aves","sul",true);
insert into tb_categorias(tipo,regiao,ativo) values("embutidos","geral",true);
insert into tb_categorias(tipo,regiao,ativo) values("diversos","importado",true);


create table tb_produto(
id bigint auto_increment,
nome varchar(255),
corte varchar(255),
preco int,
validade varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("Alcatra","bife",39,"12/2021",1);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("linguiça","padrao",28,"02/2022",4);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value("miolo de acem","picado",36,"11/2021",1);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("bisteca","bife",28,"10/2021",2);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("Frango","bife",25,"12/2021",3);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("bacon","tiras",12,"02/2022",2);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("tempero","padrao",7,"04/2022",5);
insert into tb_produto(nome,corte,preco,validade,categoria_id) value ("salsicha","padrao",18,"03/2022",4);

select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id where tb_categorias.id = 1;
