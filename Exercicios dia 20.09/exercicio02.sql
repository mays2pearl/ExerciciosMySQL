create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
preco decimal not null,
marca varchar(50) not null,
tamanho varchar(255) not null,
cor varchar(255) not null,
codigoLoja bigint not null,
ativo boolean,
primary key (id)
);

insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Tênis","calçado",550,"Nike","38","preto e azul",133,true)
insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Blusa","Vestuario",50,"Lilica","10","rosa",788,true)
insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Chinelo","calçado",45,"Havaianas","35","dourado",567,true)
insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Calça","vestuario",789,"Diesel","38","Azul",453,true)
insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Boneca","brinquedo",145,"Barbie","0","0",123,false)
insert into tb_produtos(nome,tipo,preco,marca,tamanho,cor,codigoLoja,ativo) values ("Vestido","vestuario",678,"M.Officer","38","estampado",783,true)


select * from tb_produtos where preco >= 500
select * from tb_produtos where preco <= 500

update tb_produtos set preco = 890 where id = 1

select * from tb_produtos