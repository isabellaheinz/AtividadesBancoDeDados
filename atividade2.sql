create database cinema;
use cinema;

-- Questao A
create table ator 
(
codAtor varchar(3) primary key,
nomeArtistico varchar(40) not null,
nomeReal varchar(40) not null,
nacionalidade varchar(40) not null,
sexo char(1) not null,
idade int(2) not null,
indicacaoOscar int(2),
oscar int(2)
);

create table filme 
(
codFilme varchar(3) primary key,
nomeFilme varchar(40) not null,
anoFilme int(4) not null,
orcamento int(15) not null,
tempo int(2) not null
);

create table personagem
(
codFilme varchar(3) not null,
codAtor varchar(3) not null,
personagem varchar(40) not null,
cachePersonagem int(15) not null,
primary key (codFilme, codAtor),
foreign key (codFilme) references filme(codFilme) on delete cascade on update cascade,
foreign key (codAtor) references ator(codAtor) on delete cascade on update cascade
);

-- Questao B
insert into ator values ('a1', 'Demi Moore', 'Maria da Silva' , 'USA', 'F', 32, null, null);
insert into ator values ('a10', 'William Hurt', 'Willian Ernst Hurt', 'USA', 'M', 45, 2, 1);
insert into ator values ('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', 37, 1, null);
insert into ator values ('a12', 'Jennifer Lopes', 'Maria Conchita', 'Mexico', 'F', 32, null, null);
insert into ator values ('a13', 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', 65, 6, 3);
insert into ator values ('a14', 'Antonio Bandeiras', 'Antonio Augusto Banderas', 'Espanha', 'M', 34, null, null);
insert into ator values ('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1);
insert into ator values('a1', 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, null, null);
insert into ator values('a10', 'Willian Hurt', 'Willian Ernst Hurt', 'USA', 'M', 45, 2, 1);
insert into ator values('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', 37, 1, null);
insert into ator values('a12', 'Jennifer Lopez', 'Maria Conchita Lopez', 'México', 'F', 32, null, null);
insert into ator values('a13', 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', 65, 6, 3);
insert into ator values('a14', 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', 34, null, null);
insert into ator values('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1);
insert into ator values('a16', 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', 32, 1, 1);
insert into ator values('a17', 'Jim Carrey', 'James Carrey', 'USA', 'M', 40, null, null);
insert into ator values('a18', 'Nicole Kidman', 'Susan West', 'Austrália', 'F', 33, null, null);
insert into ator values('a19', 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', 40, null, null);
insert into ator values('a2', 'Brad Pitt', 'João Paulo', 'USA', 'M', 28, 1, null);
insert into ator Values('a20', 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', 29, null, null);
insert into ator values('a21', 'Holly Hunter', 'Susan Richards', 'USA', 'F', 33, 1, 1);
insert into ator values('a22', 'Richard Gere', 'Richard Gere', 'USA', 'M', 34, null, null);
insert into ator values('a3', 'Jessica Lange', 'Jessica Lange', 'USA', 'F', 42, 4, 2);
insert into ator values('a4', 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', 36, 2, null);
insert into ator values('a5', 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', 45, null, null);
insert into ator values('a6', 'Samuel Jackson', 'Samuel L. Jackson', 'USA', 'M', 60, null, null);
insert into ator values('a7', 'Sandra Bullock', 'Sandra Bullock', 'USA', 'F', 30, 2, null);
insert into ator values('a8', 'Harry Cornick Jr.', 'Harry Cornick Jr.', 'USA', 'M', 40, null, null);
insert into ator values('a9', 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', 31, 1, null);

insert into filme values ('f1', 'A jurada', 1996, 1000000, 18);
insert into filme values ('f10', 'Cidade das sombras', 1997, 10000000, 7);
insert into filme values ('f11', 'Irresistível Paixão', 1998, 10000000, 10);
insert into filme values ('f12', 'A Máscara do zorro', 1998, 11000000, 11);
insert into filme values ('f13', 'Quem vai ficar com Marry?', 1997, 6000000, 8);
insert into filme values ('f14', 'O resgate do soldado Ryan', 1997, 10000000, 7);
insert into filme values ('f15', 'O show de Truman', 1998, 10000000, 14);
insert into filme values ('f16', 'Batman, o filme', 1995, 10000000, 9);
insert into filme values ('f17', 'Filadélfia', 1996, 10000000, 6);
insert into filme values ('f18', 'O mascára', 1995, 6000000, 7);
insert into filme values ('f19', 'O beijo da mulher aranha', 1990,8000000, 24);
insert into filme values ('f2', 'A letra escarlate', 1995, 10000000, 24);
insert into filme values ('f20', 'O pacificador', 1997, 10000000, 15);
insert into filme values ('f21', 'Ace Aventura', 1995, 7000000, 12);
insert into filme values ('f22', 'Chaplin', 1993, 8000000, 14);
insert into filme values ('f23', 'Batman e Robin', 1997, 10000000, 20);
insert into filme values ('f24', 'Strip Tease', 1996, 7000000, 12);
insert into filme values ('f25', 'Passageiro 57', 1993, 200000000, 15);
insert into filme values ('f26', 'Forrest Gump', 1996, 90000000, 15);
insert into filme values ('f3' , 'Seven', 1995, 15000000, 20);
insert into filme values ('f4' , 'Tootsie', 1982, 5000000, 16);
insert into filme values('f5', 'Tieta', 1995, 2000000, 18);
insert into filme values('f6', 'Código de Violência', 1997, 10000000, 15);
insert into filme values('f7', 'Quando o Amor Acontece', 1998, 5000000, 12);
insert into filme values('f8', 'A Vingança de Bette', 1998, 10000000, 9);
insert into filme values('f9', 'Blade, o Caçador de Vampiros' , 1998 ,100000000 ,18);
