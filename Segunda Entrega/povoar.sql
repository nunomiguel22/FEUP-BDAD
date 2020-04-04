
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--PERFIL
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Pedro Vale', 'pedro', 'pedroPass', 'pedrovale@gmail.com', 'avatar1');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('João Gomes', 'joao', 'joaoPass', 'joao@gmail.com', 'avatar2');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Mário Teixeira', 'mario', 'marioPass', 'mario@gmail.com', 'avatar3');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Tiago Lopes', 'tiago', 'tiagoPass', 'tiago@gmail.com', 'avatar4');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Ricardo Augusto', 'ricardo', 'ricardoPass', 'ricardo@gmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Esteves ', 'mariaE', 'mariaestevesPass', 'mariaesteves@gmail.com', 'avatar6');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Paulo Cardoso', 'paulo', 'pauloPass', 'paulo@gmail.com', 'avatar7');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Ana Rodrigues', 'ana', 'anaPass', 'ana@gmail.com', 'avatar8');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Filipa', 'maria', 'mariaPass', 'maria@gmail.com', 'avatar9');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Alexandre Martins', 'alexandre', 'alexandrePass', 'alexandre@gmail.com', 'avatar10');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Sofia Pires', 'sofia', 'sofiaPass', 'sofia@gmail.com', 'avatar11');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('João Pires', 'joaoP', 'joaoPass', 'joaopires@gmail.com', 'avatar12');

--PERFIL_PREMIUM
INSERT INTO perfilpremium(idperfil) VALUES (1);
INSERT INTO perfilpremium(idperfil) VALUES (2);
INSERT INTO perfilpremium(idperfil) VALUES (4);
INSERT INTO perfilpremium(idperfil) VALUES (9);

--PERFIL_GRATIS
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (3,4, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (5,null, 2);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (6,1, 7);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (7,null, 3);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (8,8, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (10,2, 2);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (11,15, 3);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (12,5, 7);

--AMIZADE

INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,4, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,2, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (2,3, 0);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (2,10, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (3,1, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (3,5, 0);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (4,2, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (4,9, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (5,1, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (5,8, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (7,4, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (9,7, 1);


--SALA
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (1, 'CANHAO OMANO', 'avatar1', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (2,'PARTY', 'avatar2', 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (4,'LOL', 'avatar3', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (2,'Grupo', 'avatar4', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (1,'CS', 'avatar5', 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (2,'Legends', 'avatar6', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (5,'Mais1', 'avatar7', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (9,'Spot', 'avatar8, 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (3,'LOR', 'avatar9', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (8,'LORE', 'avatar10', 0);



--SUBSCRIÇAO_SALA
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (1,3);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (1,2);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (3,1);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (9,6);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (2,5);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (4,10);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (5,10);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (5,3);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (7,1);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (8,1);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (8,3);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (12, 9);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (10, 1);
INSERTO INTO subscricaosala(idperfil, idsala) VALUES (11, 6);


--CHAT
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.1');
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.2');
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.3');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.1');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.2');
INSERT INTO chat(idsala, nome) VALUES (2, 'Sala 2.1');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.1');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.2');
INSERT INTO chat(idsala, nome) VALUES (3, 'Sala 3.1');
INSERT INTO chat(idsala, nome) VALUES (4, 'Sala 4.1');
INSERT INTO chat(idsala, nome) VALUES (4, 'Sala 4.2');
INSERT INTO chat(idsala, nome) VALUES (4, 'Sala 4.3');
INSERT INTO chat(idsala, nome) VALUES (5, 'Sala 5.1');
INSERT INTO chat(idsala, nome) VALUES (5, 'Sala 5.2');
INSERT INTO chat(idsala, nome) VALUES (5, 'Sala 5.3');
INSERT INTO chat(idsala, nome) VALUES (6, 'Sala 6.1');
INSERT INTO chat(idsala, nome) VALUES (6, 'Sala 6.2');
INSERT INTO chat(idsala, nome) VALUES (6, 'Sala 6.3');
INSERT INTO chat(idsala, nome) VALUES (7, 'Sala 7.1');
INSERT INTO chat(idsala, nome) VALUES (7, 'Sala 7.2');
INSERT INTO chat(idsala, nome) VALUES (7, 'Sala 7.3');
INSERT INTO chat(idsala, nome) VALUES (8, 'Sala 8.1');
INSERT INTO chat(idsala, nome) VALUES (8, 'Sala 8.2');
INSERT INTO chat(idsala, nome) VALUES (8, 'Sala 8.3');
INSERT INTO chat(idsala, nome) VALUES (9, 'Sala 9.1');
INSERT INTO chat(idsala, nome) VALUES (9, 'Sala 9.2');
INSERT INTO chat(idsala, nome) VALUES (9, 'Sala 9.3');
INSERT INTO chat(idsala, nome) VALUES (10, 'Sala 10.1');
INSERT INTO chat(idsala, nome) VALUES (10, 'Sala 10.2');
INSERT INTO chat(idsala, nome) VALUES (10, 'Sala 10.3');
INSERT INTO chat(idsala, nome) VALUES (11, 'Sala 11.1');
INSERT INTO chat(idsala, nome) VALUES (11, 'Sala 11.2');
INSERT INTO chat(idsala, nome) VALUES (11, 'Sala 11.3');
INSERT INTO chat(idsala, nome) VALUES (12, 'Sala 12.1');
INSERT INTO chat(idsala, nome) VALUES (12, 'Sala 12.2');
INSERT INTO chat(idsala, nome) VALUES (12, 'Sala 12.3');


--MENSAGEM
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 2, 'Tudo Bem?', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 1, 'sim e tu?', 21.33, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 5, 'TA tudo?', 12.36, null);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 4, 'nao', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(6, 3, 'Isoooo', 21.30, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(2, 2, 'Tudo Bem?', 21.45, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(2, 1, 'Isoooo', 17.33, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(5, 5, 'BOAS!!!', 3.36, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(5, 4, 'nao', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(7, 3, 'Tudo Bem?', 23.36, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(7, 2, 'Vamos jogar', 22.14, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(13, 1, 'sim e tu?', 21.32, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(13, 5, 'TA tudo?', 18.54, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 4, 'nao', 14.36, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 3, 'TBOAS!!!', 12.20, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(12, 2, 'Isoooo', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(19, 1, 'sim e tu?', 21.33, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(19, 5, 'BOAS!!!', 12.36, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(17, 4, 'nao', 20.56, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 3, 'Isoooo', 22.00, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(17, 2, 'BOAS!!!', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(21, 1, 'sim e tu?', 21.33, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(21, 5, 'BOAS!!!', 12.36, null);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(26, 4, 'nao', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(23, 3, 'Vamos jogar', 22.03, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(27, 2, 'Tudo Bem?', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(27, 1, 'sim e tu?', 21.33, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(29, 5, 'Vamos jogar', 12.36, null);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(32, 4, 'Vamos jogar', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(32, 3, 'Tudo Bem?', 21.30, 0);


--EMOJI

INSERTO INTO emoji(nome, emoji) VALUES ('sorrir', ':)');
INSERTO INTO emoji(nome, emoji) VALUES ('triste', ':(');
INSERTO INTO emoji(nome, emoji) VALUES ('beijo', ':*');
INSERTO INTO emoji(nome, emoji) VALUES ('coraçao', '<3');
INSERTO INTO emoji(nome, emoji) VALUES ('lingua', ':P');
INSERTO INTO emoji(nome, emoji) VALUES ('xisdê', 'xD');
INSERTO INTO emoji(nome, emoji) VALUES ('pog', ':P');
INSERTO INTO emoji(nome, emoji) VALUES ('wink', ';)');
INSERTO INTO emoji(nome, emoji) VALUES ('sealed', ':X');
INSERTO INTO emoji(nome, emoji) VALUES ('dead', 'X(');
INSERTO INTO emoji(nome, emoji) VALUES ('angry', ':-|');
INSERTO INTO emoji(nome, emoji) VALUES ('cool', 'B-)');
INSERTO INTO emoji(nome, emoji) VALUES ('suprised', ':O');
INSERTO INTO emoji(nome, emoji) VALUES ('heartbreak', '</3');
INSERTO INTO emoji(nome, emoji) VALUES ('sorrir2', ':D');


--Emoji_mensagem

INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (1, 1, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (1, 2, 2);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (2, 3, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (6, 4, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (4, 5, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (6, 6, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (8, 7, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (11, 8, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (11, 9, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (8, 10, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (3, 11, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (7, 12, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (19, 13, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (18, 14, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (21, 1, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (26, 2, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (14, 4, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (15, 5, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (17, 6, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (28, 7, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (26, 8, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (21, 1, 1);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (23, 2, 1);


--Recao

INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (1, 1, 1, 21.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (2, 2, 2, 20.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (3, 3, 4, 00.40);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (12, 4, 6, 13.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (5, 6, 4, 15.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (6, 4, 1, 21.45);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (11, 5, 10, 22.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (7, 8, 11, 12.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (18, 12, 9, 23.00);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (12, 2, 6, 22.36);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (17, 6, 4, 19.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (21, 7, 9, 3.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (24, 8, 7, 4.20);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (21, 10, 1, 21.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (23, 9, 3, 21.30);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (25, 2, 8, 21.30);


