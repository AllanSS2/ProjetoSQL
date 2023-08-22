drop database dbLivraria;

create database dbLivraria;

use dbLivraria;

create table tbGenero(
    idGenero int not null,
    descricao varchar(100),
    primary key(idGenero)
);
create table tbAutor(
    idAutor int not null,
    nome varchar(100),
    email varchar(100),
    primary key(idAutor)
);
create table tbCliente(
    idCliente int not null,
    nome varchar(100),
    telefone varchar(45),
    primary key(idCliente)
);
create table tbLivro(
    idLivro int not null,
    titulo varchar(100) not null,
    preco float(7,2) not null check(preco > 0),
    estoque int not null check(estoque>=0),
    idGenero int not null,
    primary key(idLivro),
    foreign key(idGenero) references tbGenero(idGenero)
);
create table tbEscreve(
    idLivro int not null,
    idAutor int not null,
    foreign key(idLivro) references tbLivro(idLivro),
    foreign key(idAutor) references tbAutor(idAutor)
);
create table tbVenda(
    idVenda int not null,
    data date not null,
    total float(7,2) not null default 0 check(total > 0),
    idCliente int not null,
    primary key(idVenda),
    foreign key(idCliente) references tbCliente(idCliente)
);
create table tbItensDaVenda(
    idVenda int not null,
    idLivro int not null,
    quantidade int not null check(quantidade >= 0),
    subtotal varchar(45) not null default 0 check(subtotal > 0),
    foreign key(idVenda) references tbVenda(idVenda),
    foreign key(idLivro) references tbLivro(idLivro)
);

desc tbGenero;
desc tbAutor;
desc tbCliente;
desc tbLivro;
desc tbEscreve;
desc tbVenda;
desc tbItensDaVenda;

-- Tabela Genero
insert into tbGenero(idGenero,descricao) values(1,'Fantasia');
insert into tbGenero(idGenero,descricao) values(2,'Ficção científica');
insert into tbGenero(idGenero,descricao) values(3,'Distopia');
insert into tbGenero(idGenero,descricao) values(4,'Ação');
insert into tbGenero(idGenero,descricao) values(5,'Aventura');
insert into tbGenero(idGenero,descricao) values(6,'Horror');
insert into tbGenero(idGenero,descricao) values(7,'Ficção Policial');
insert into tbGenero(idGenero,descricao) values(8,'Gastronomia');
insert into tbGenero(idGenero,descricao) values(9,'Historia');
insert into tbGenero(idGenero,descricao) values(10,'Humor');

update tbGenero set descricao='Infantil' where idGenero=1;
update tbGenero set descricao='Arte' where idGenero=2;
update tbGenero set descricao='Auto Ajuda' where idGenero=3;
update tbGenero set descricao='Crimes Reais' where idGenero=4;
update tbGenero set descricao='Tecnologia' where idGenero=5;

-- Tabela Autor
insert into tbAutor(idAutor,nome,email) values(1,'Lucas','lucas@gmail.com');
insert into tbAutor(idAutor,nome,email) values(2,'Emily','emily@gmail.com');
insert into tbAutor(idAutor,nome,email) values(3,'Alexander','Alexander@gmail.com');
insert into tbAutor(idAutor,nome,email) values(4,'Victoria','Victoria@gmail.com');
insert into tbAutor(idAutor,nome,email) values(5,'Ethan','Ethan@gmail.com');
insert into tbAutor(idAutor,nome,email) values(6,'Olivia','Olivia@gmail.com');
insert into tbAutor(idAutor,nome,email) values(7,'Benjamin','Benjamin@gmail.com');
insert into tbAutor(idAutor,nome,email) values(8,'Isabella','Isabella@gmail.com');
insert into tbAutor(idAutor,nome,email) values(9,'Samuel','Samuel@gmail.com');
insert into tbAutor(idAutor,nome,email) values(10,'Ava','Ava@gmail.com');

update tbAutor set nome='Luan',email='luan@gmail.com' where idAutor=1;
update tbAutor set nome='Lucas',email='lucas@gmail.com' where idAutor=2;
update tbAutor set nome='Matheus',email='matheus@gmail.com' where idAutor=3;
update tbAutor set nome='Ryan',email='ryan@gmail.com' where idAutor=4;
update tbAutor set nome='Rodrigo',email='rodrigo@gmail.com' where idAutor=5;

-- Tabela Cliente
insert into tbCliente(idCliente,nome,telefone) values(1,'Yudi','94001-8922');
insert into tbCliente(idCliente,nome,telefone) values(2,'Isabella','94002-8922');
insert into tbCliente(idCliente,nome,telefone) values(3,'Sophia','94009-8922');
insert into tbCliente(idCliente,nome,telefone) values(4,'Mia','94008-8922');
insert into tbCliente(idCliente,nome,telefone) values(5,'Olivia','94007-8922');
insert into tbCliente(idCliente,nome,telefone) values(6,'Ethan','94006-8922');
insert into tbCliente(idCliente,nome,telefone) values(7,'Cleber','94002-8922');
insert into tbCliente(idCliente,nome,telefone) values(8,'Paulo','94003-8922');
insert into tbCliente(idCliente,nome,telefone) values(9,'Neymar','94004-8922');
insert into tbCliente(idCliente,nome,telefone) values(10,'Haaland','94005-8922');

update tbCliente set nome = 'Junior', telefone = '93233-2323' where idCliente = 1;
update tbCliente set nome = 'João', telefone = '93475-4344' where idCliente = 2;
update tbCliente set nome = 'Marcos', telefone = '94306-8753' where idCliente = 3;
update tbCliente set nome = 'Pedro', telefone = '95934-5422' where idCliente = 4;
update tbCliente set nome = 'Priscila' where idCliente = 5;

-- Tabela Livro
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(1,'Sobre Arte',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(2,'infancia',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(3,'Auto AJudas',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(4,'Crimes no Brasil',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(5,'Javascript',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(6,'Sobre Arte',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(7,'Sobre Arte',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(8,'Sobre Arte',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(9,'Sobre Arte',20,50,2);
insert into tbLivro(idLivro,titulo,preco,estoque,idGenero) values(10,'Sobre Arte',20,50,2);

update tbLivro set preco = 30,estoque = 25  where idLivro=1;
update tbLivro set preco = 30,estoque = 54,idGenero=1 where idLivro=2;
update tbLivro set preco = 15,estoque = 21,idGenero=3 where idLivro=3;
update tbLivro set preco = 43,estoque = 32,idGenero=4 where idLivro=4;
update tbLivro set preco = 39,estoque = 45,idGenero=5 where idLivro=5;


-- Tabela Escreve
insert into tbEscreve(idLivro,idAutor) values(1,1);
insert into tbEscreve(idLivro,idAutor) values(2,2);
insert into tbEscreve(idLivro,idAutor) values(3,3);
insert into tbEscreve(idLivro,idAutor) values(4,4);
insert into tbEscreve(idLivro,idAutor) values(5,5);
insert into tbEscreve(idLivro,idAutor) values(6,6);
insert into tbEscreve(idLivro,idAutor) values(7,9);
insert into tbEscreve(idLivro,idAutor) values(9,8);
insert into tbEscreve(idLivro,idAutor) values(10,7);
insert into tbEscreve(idLivro,idAutor) values(8,10);

update tbEscreve set idAutor = 4 where idLivro=1;
update tbEscreve set idAutor = 5 where idLivro=2;
update tbEscreve set idAutor = 2 where idLivro=3;
update tbEscreve set idAutor = 3 where idLivro=4;
update tbEscreve set idAutor = 1 where idLivro=5;

-- Tabela Venda
insert into tbVenda(idVenda,data,total,idCliente) values(1,'22/08/28',200,1);
insert into tbVenda(idVenda,data,total,idCliente) values(2,'22/07/24',50,2);
insert into tbVenda(idVenda,data,total,idCliente) values(3,'22/07/22',30,3);
insert into tbVenda(idVenda,data,total,idCliente) values(4,'22/07/21',70,4);
insert into tbVenda(idVenda,data,total,idCliente) values(5,'22/07/20',53,5);
insert into tbVenda(idVenda,data,total,idCliente) values(6,'22/07/19',121,1);
insert into tbVenda(idVenda,data,total,idCliente) values(7,'22/07/17',22,2);
insert into tbVenda(idVenda,data,total,idCliente) values(8,'22/07/14',15,3);
insert into tbVenda(idVenda,data,total,idCliente) values(9,'22/07/12',70,4);
insert into tbVenda(idVenda,data,total,idCliente) values(10,'22/06/23',40,5);

update tbVenda set total = 20 where idVenda=1;
update tbVenda set total = 55 where idVenda=2;
update tbVenda set total = 35 where idVenda=3;
update tbVenda set total = 79 where idVenda=4;
update tbVenda set total = 35 where idVenda=5;

-- Tabela Itens Da Venda
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(1,1,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(2,2,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(3,3,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(4,4,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(5,5,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(6,1,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(7,2,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(8,3,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(9,4,20,20);
insert into tbItensDaVenda(idVenda,idLivro,quantidade,subtotal) values(10,5,20,20);

update tbItensDaVenda set quantidade = 3,subtotal = 30 where idVenda = 1;
update tbItensDaVenda set quantidade = 1,subtotal = 10 where idVenda = 2;
update tbItensDaVenda set quantidade = 1,subtotal = 05 where idVenda = 3;
update tbItensDaVenda set quantidade = 5,subtotal = 34 where idVenda = 4;
update tbItensDaVenda set quantidade = 4,subtotal = 29 where idVenda = 5;

-- Deletes
delete from tbGenero where descricao='Horror';
delete from tbGenero where idGenero=7;
delete from tbGenero where idGenero=8;
delete from tbGenero where idGenero=9;
delete from tbGenero where idGenero=10;

delete from tbEscreve where idLivro = 6;
delete from tbEscreve where idLivro = 7;
delete from tbEscreve where idLivro = 8;
delete from tbEscreve where idLivro = 9;
delete from tbEscreve where idLivro = 10;

delete from tbAutor where idAutor= 6;
delete from tbAutor where idAutor= 7;
delete from tbAutor where idAutor= 8;
delete from tbAutor where idAutor= 9;
delete from tbAutor where idAutor= 10;

delete from tbLivro where idLivro = 6;
delete from tbLivro where idLivro = 7;
delete from tbLivro where idLivro = 8;
delete from tbLivro where idLivro = 9;
delete from tbLivro where idLivro = 10;

delete from tbCliente where idCliente = 6;
delete from tbCliente where idCliente = 7;
delete from tbCliente where idCliente = 8;
delete from tbCliente where idCliente = 9;
delete from tbCliente where idCliente = 10;

delete from tbItensDaVenda where idVenda=6;
delete from tbItensDaVenda where idVenda=7;
delete from tbItensDaVenda where idVenda=8;
delete from tbItensDaVenda where idVenda=9;
delete from tbItensDaVenda where idVenda=10;

delete from tbVenda where idVenda=6;
delete from tbVenda where idVenda=7;
delete from tbVenda where idVenda=8;
delete from tbVenda where idVenda=9;
delete from tbVenda where idVenda=10;


-- Selects
select * from tbGenero;
select * from tbAutor;
select * from tbCliente;
select * from tbLivro;
select * from tbEscreve;
select * from tbVenda;
select * from tbItensDaVenda;

-- Distinct 
select distinct titulo from tbLivro;

-- Where 
select * from tbAutor where idAutor = 3;

-- Alias
select titulo as 'Nome do Livro', preco as 'Preço' from tbLivro;

-- Pesquisa por codigo
select * from tbVenda where idVenda = 3;

-- Pesquisa por nome
select * from tbAutor where nome = 'Lucas';

-- or, in, and
select * from tbLivro where preco = 30 or estoque = 25;
select * from tbLivro where preco in(30,15);
select * from tbLivro where preco between 10 and 40;

-- maior, menor, maior e igual, menor e igual
select * from tbLivro where preco > 20;
select * from tbLivro where preco < 20;
select * from tbLivro where preco >= 39;
select * from tbLivro where preco <= 30;

-- order by 
select * from tbItensDaVenda order by quantidade;

-- not
select * from tbLivro where preco not in(30,15);