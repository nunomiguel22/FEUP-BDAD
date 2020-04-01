-- Projeto BDAD Discord --
.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

DROP TABLE IF EXISTS perfil;
create Table perfil(
	idperfil integer PRIMARY KEY AUTOINCREMENT,
	username varchar(32) not null UNIQUE,
	password varchar(32) not null,
	email varchar(32) not null UNIQUE,
	avatar varchar(32) --default foto discord
);


DROP TABLE IF EXISTS perfilgratis; 
create table perfilgratis(
	idperfil integer PRIMARY KEY 
						CONSTRAINT fk_perfilgratis_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	emojis integer(32) default 0,
	reacoes integer(32) default 0
);

DROP TABLE IF EXISTS perfilpremium;
create table perfilpremium(
	idperfil integer PRIMARY KEY 
						CONSTRAINT fk_perfilpremium_idperfil REFERENCES perfil(idperfil) ON DELETE CASCADE,
	mensalidade float(32)
);

DROP TABLE IF EXISTS sala;
create table sala(
	idsala integer PRIMARY KEY AUTOINCREMENT,
	nome varchar(32),
	avatar varchar(32), -- default ...
	adulto boolean
);

DROP TABLE IF EXISTS chat;
create table chat( 
	idchat integer PRIMARY KEY AUTOINCREMENT, 
	idsala integer CONSTRAINT fk_chat_idsala REFERENCES sala(idsala),
	nome varchar(16) not null
);

DROP TABLE IF EXISTS mensagem;
create table mensagem(
	idmensagem integer PRIMARY KEY AUTOINCREMENT,
	idchat integer CONSTRAINT fk_chat_mensagem REFERENCES chat(idchat),
	idperfil integer CONSTRAINT fk_mensagem_idperfil REFERENCES perfil(idperfil),
	mensagem varchar(64) not null,
	tempo float(32) not null,
	pinned boolean default 0
);

DROP TABLE IF EXISTS tiporeacao;
create table tiporeacao(
	idreacao integer PRIMARY KEY AUTOINCREMENT,
	reacao varchar(16) not null UNIQUE,
	avatarreacao varchar(32)
);

DROP TABLE IF EXISTS reacao;
create table reacao(
	idmensagem integer CONSTRAINT fk_reacao_idmensagem REFERENCES mensagem(idmensagem),
	idperfil integer CONSTRAINT fk_reacao_idperfil REFERENCES perfil(idperfil),
	idreacao integer CONSTRAINT fk_reacao_tiporeacao REFERENCES tiporeacao(idreacao)
);

DROP TABLE IF EXISTS subscricaosala;
create table subscricaosala(
	idperfil integer CONSTRAINT fk_subscricaosala_idperfil REFERENCES perfil(idperfil),
	idsala integer CONSTRAINT fk_chat_idsala REFERENCES sala(idsala),
	CONSTRAINT pk_subscricaosala PRIMARY KEY (idperfil, idsala)
);

DROP TABLE IF EXISTS amizade;
create table amizade(
	idperfil1 integer CONSTRAINT fk_subscricaosala_idperfil1  REFERENCES perfil(idperfil),
	idperfil2 integer CONSTRAINT fk_subscricaosala_idperfil2 REFERENCES perfil(idperfil),
	boolean amizade not null,
	CONSTRAINT pk_amizade PRIMARY KEY (idperfil1, idperfil2)
);
