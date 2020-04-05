-- Projeto BDAD Discord --
.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--CHAT
DROP TABLE IF EXISTS chat;
create table chat( 
	idchat integer PRIMARY KEY AUTOINCREMENT, 
	idsala integer CONSTRAINT fk_chat_idsala REFERENCES sala(idsala),
	nome varchar(16) not null
);

--SUBSCRICAO_SALA
DROP TABLE IF EXISTS subscricaosala;
create table subscricaosala(
	idperfil integer CONSTRAINT fk_subscricaosala_idperfil REFERENCES perfil(idperfil),
	idsala integer CONSTRAINT fk_subscricaosala_idsala REFERENCES sala(idsala),
	CONSTRAINT pk_subscricaosala PRIMARY KEY (idperfil, idsala)
);

--SALA
DROP TABLE IF EXISTS sala;
create table sala(
	idsala integer PRIMARY KEY AUTOINCREMENT,
	idperfil integer CONSTRAINT fk_sala_idperfil REFERENCES perfil(idperfil), --admin
	nome varchar(32) default 'Sala', 
	avatar varchar(32) default 'avatar1', --imagem predefinida da sala
	adulto integer not null CHECK(adulto IN (0,1)) --boolean
);

--EMOJI
DROP TABLE IF EXISTS emoji;
create table emoji(
	idemoji integer PRIMARY KEY AUTOINCREMENT,
	nome varchar(32) not null,
	emoji varchar(32) not null
);

--MENSAGEM
DROP TABLE IF EXISTS mensagem;
create table mensagem(
	idmensagem integer PRIMARY KEY AUTOINCREMENT,
	idchat integer CONSTRAINT fk_chat_mensagem REFERENCES chat(idchat),
	idperfil integer CONSTRAINT fk_mensagem_idperfil REFERENCES perfil(idperfil),
	mensagem varchar(64) not null,
	tempo float(32) not null,
	pinned integer default 0 CHECK(pinned IN (0,1)) --boolean
);

--EMOJIMENSAGEM
DROP TABLE IF EXISTS emojimensagem;
create table emojimensagem(
	idmensagem integer CONSTRAINT fk_emojimensagem_idmensagem REFERENCES mensagem(idmensagem),
	idemoji integer CONSTRAINT fk_emojimensagem_idemoji REFERENCES emoji(idemoji),
	posicao integer not null,
	CONSTRAINT pk_emojimensagem PRIMARY KEY (idmensagem, posicao)
);

--REACAO
DROP TABLE IF EXISTS reacao;
create table reacao(
	idmensagem integer CONSTRAINT fk_reacao_idmensagem REFERENCES mensagem(idmensagem),
	idperfil integer CONSTRAINT fk_reacao_idperfil REFERENCES perfil(idperfil),
	idemoji integer CONSTRAINT fk_reacao_idemoji REFERENCES emoji(idemoji),
	tempo float(32) not null,
	CONSTRAINT pk_reacao PRIMARY KEY (idmensagem, idperfil)
);

--AMIZADE
DROP TABLE IF EXISTS amizade;
create table amizade(
	idperfil1 integer CONSTRAINT fk_amizade_idperfil1  REFERENCES perfil(idperfil), --envia
	idperfil2 integer CONSTRAINT fk_amizade_idperfil2 REFERENCES perfil(idperfil), --recebe
	amizade integer CHECK(amizade IN (0,1)), --boolean (NULL - pedido pendente; 0 - recusado; 1 - aceite)
	CONSTRAINT pk_amizade PRIMARY KEY (idperfil1, idperfil2)
);

--PERFIL_GRATIS
DROP TABLE IF EXISTS perfilgratis; 
create table perfilgratis(
	idperfil integer PRIMARY KEY 
			CONSTRAINT fk_perfilgratis_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	emojis integer(32) default 0,
	reacoes integer(32) default 0
);

--PERFIL_PREMIUM
DROP TABLE IF EXISTS perfilpremium;
create table perfilpremium(
	idperfil integer PRIMARY KEY 
			CONSTRAINT fk_perfilpremium_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	mensalidade float(32) default 9.99
);

--PERFIL
DROP TABLE IF EXISTS perfil;
create Table perfil(
	idperfil integer PRIMARY KEY AUTOINCREMENT,
	nome varchar(32) not null,
	username varchar(32) not null UNIQUE,
	password varchar(32) not null CHECK(length(password) >= 6),
	email varchar(32) not null UNIQUE,
	avatar varchar(32) default 'avatar1' --imagem predefinida para utilizadores
);
