create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
skill varchar(150),
hp_base int,
arma varchar(255),
primary key(id)

);

insert into tb_classes(nome,skill,hp_base,arma) values ("Feiticeiro","feitiço",1500,"cajado");
insert into tb_classes(nome,skill,hp_base,arma) values ("Arqueiro","ranged",5550,"arco e flecha");
insert into tb_classes(nome,skill,hp_base,arma) values ("Bruxa","magia",2500,"cajado");
insert into tb_classes(nome,skill,hp_base,arma) values ("Cavaleiro","força",7500,"cajado");
insert into tb_classes(nome,skill,hp_base,arma) values ("Curandeiro","poções",3500,"cajado");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome,nivel,ataque,defesa,classe_id) value ("Golias",8,10000,5000,2);
insert into tb_personagens(nome,nivel,ataque,defesa,classe_id) value ("Leo",12,2000,5000,3);
insert into tb_personagens(nome,nivel,ataque,defesa,classe_id) value ("net",80,5000,3000,5);
insert into tb_personagens(nome,nivel,ataque,defesa,classe_id) value ("jason",10,5000,5000,4);
insert into tb_personagens(nome,nivel,ataque,defesa,classe_id) value ("jose",4,1000,5000,1);

select * from tb_persomagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id where tb_classes.id = 2;
