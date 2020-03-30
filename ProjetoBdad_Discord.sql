-- Projeto BDAD Discord --
.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

DROP TABLE IF EXISTS amizade;
DROP TABLE IF EXISTS subscricaosala;
DROP TABLE IF EXISTS reacao;
DROP TABLE IF EXISTS mensagem;
DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS sala;
DROP TABLE IF EXISTS perfilpremium ;
DROP TABLE IF EXISTS perfilgratis; 
DROP TABLE IF EXISTS perfil;

create Table perfil(
	idperfil integer PRIMARY KEY AUTOINCREMENT,
	username varchar(32) not null,
	password varchar(32) not null,
	email varchar(32) not null,
	avatar varchar(32) --default foto discord
);

create table perfilgratis(
	idperfil integer PRIMARY KEY 
						CONSTRAINT fk_perfilgratis_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	emojis integer(32) default 0,
	reacoes integer(32) default 0
);

create table perfilpremium(
	idperfil integer PRIMARY KEY 
						CONSTRAINT fk_perfilpremium_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	mensalidade float(32)
);

create table sala(
	idsala integer PRIMARY KEY AUTOINCREMENT,
	nome varchar(32),
	avatar varchar(32), -- default ...
	adulto boolean
);


create table chat( 
	idchat integer PRIMARY KEY AUTOINCREMENT, 
	idsala integer CONSTRAINT fk_chat_idsala REFERENCES sala(idsala),
	nome varchar(16) not null
);


create table mensagem(
	idmensagem integer PRIMARY KEY AUTOINCREMENT,
	idchat integer CONSTRAINT fk_chat_mensagem REFERENCES chat(idchat),
	idperfil integer CONSTRAINT fk_mensagem_idperfil REFERENCES perfil(idperfil),
	mensagem varchar(64) not null,
	tempo float(32) not null,
	pinned boolean default 0
);

create table reacao(
	idreacao integer PRIMARY KEY,
	idmensagem integer
	--tipo de reaçao??
);

create table subscricaosala(
	idperfil integer CONSTRAINT fk_subscricaosala_idperfil REFERENCES perfil(idperfil),
	idsala integer CONSTRAINT fk_chat_idsala REFERENCES sala(idsala),
	CONSTRAINT pk_subscricaosala PRIMARY KEY (idperfil, idsala)
);

create table amizade(
	idperfil1 integer CONSTRAINT fk_subscricaosala_idperfil1  REFERENCES perfil(idperfil),
	idperfil2 integer CONSTRAINT fk_subscricaosala_idperfil2 REFERENCES perfil(idperfil),
	boolean amizade not null,
	CONSTRAINT pk_amizade PRIMARY KEY (idperfil1, idperfil2)
);


INSERT INTO perfil(username, password, email, avatar) VALUES ('Pedro Vale', 'pedro', 'pedrovale@gmail.com', 'avatar1');
INSERT INTO perfil(username, password, email, avatar) VALUES ('Joao', 'joao', 'j@gmail.com', 'avatar2');
INSERT INTO perfil(username, password, email, avatar) VALUES ('Mario', 'mario', 'm@gmail.com', 'avatar3');
INSERT INTO perfil(username, password, email, avatar) VALUES ('Tiago', 'tiago', 't@gmail.com', 'avatar4');
INSERT INTO perfil(username, password, email, avatar) VALUES ('Ricardo', 'rica', 'r@gmail.com', 'avatar5');


INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (1,9.99);
INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (2,9.99);
INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (4,9.99);

INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (3,4, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (5,null, 2);

INSERT INTO sala(nome, avatar, adulto) VALUES ('CANHAO OMANO', 'avatar1', 0);
INSERT INTO sala(nome, avatar, adulto) VALUES ('PARTY', 'avatar2', 1);
INSERT INTO sala(nome, avatar, adulto) VALUES ('LOL', 'avatar3', 0);

INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.1');
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.2');
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.3');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.1');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.2');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.1');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.1');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.2');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.1');

INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 2, 'Tudo Bem?', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 1, 'sim e tu?', 21.33, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 5, 'TA tudo?', 12.36, null);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 4, 'nao', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(6, 3, 'Tudo Bem?', 21.30, 0);



select *
from perfil;

select *
from perfilpremium;

select *
from perfilgratis;
	
select *
from sala;

select *
from chat;

select distinct mensagem.idperfil, mensagem.mensagem
from mensagem, chat
where chat.idchat = mensagem.idchat and chat.idchat = 1;

select *
from reacao;

select *
from subscricaosala;

select *
from amizade;


 



