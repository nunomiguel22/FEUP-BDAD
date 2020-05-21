
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--PERFIL
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Pedro Vale', 'pedro', 'pedroPass', 'pedrovale@gmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Filipa', 'maria', 'mariaPass', 'maria@gmail.com', 'avatar11');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Mário Teixeira', 'mario', 'marioPass', 'mario@gmail.com', 'avatar3');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Tiago Lopes', 'tiago', 'tiagoPass', 'tiago@gmail.com', 'avatar1');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Ricardo Augusto', 'ricardo', 'ricardoPass', 'ricardo@hotmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Esteves ', 'mariaE', 'mariaestevesPass', 'mariaesteves@gmail.com', 'avatar4');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Paulo Cardoso', 'paulo', 'pauloPass', 'paulo@gmail.com', 'avatar7');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Ana Rodrigues', 'ana', 'anaPass', 'ana@gmail.com', 'avatar8');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('João Gomes', 'joao', 'joaoPass', 'joao@gmail.com', 'avatar2');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Alexandre Martins', 'alexandre', 'alexandrePass', 'alexandre@icloud.com', 'avatar3');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Sofia Pires', 'sofia', 'sofiaPass', 'sofia@gmail.com', 'avatar10');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('João Pires', 'joaoP', 'joaoPass', 'joaopires@gmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Marta Oliveira', 'marta', 'martaPass', 'marta@gmail.com', 'avatar1');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Santos', 'mariaS', 'mariaPass', 'maria@icloud.com', 'avatar6');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Guilherme Oliveira', 'guilherme', 'guilhermePass', 'guilherme@gmail.com', 'avatar6');

--PERFIL_PREMIUM
INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (1, 5.99);
INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (2, 5.99);
INSERT INTO perfilpremium(idperfil) VALUES (4);
INSERT INTO perfilpremium(idperfil) VALUES (9);
INSERT INTO perfilpremium(idperfil) VALUES (14);
INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (15, 12.50);

--PERFIL_GRATIS
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (3, null, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (5, 1, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (6, 2, 1);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (7, 2, 2);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (8, null, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (10, null, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (11, null, null);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (12, null, 1);
INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (13, 1, null);

--AMIZADE
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,4, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,3, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (4,3, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (7,2, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (5,1, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (11,7, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (5,2, 0);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (11,2, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (6,9, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (12,7, null);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (13,15, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (4,11, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (9,7, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (9,4, 0);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (9,15, null);

--SALA
INSERT INTO sala(idperfil, adulto) VALUES (1, 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (2, 'PARTY', 'avatar3', 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (4, 'LOL', 'avatar3', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (2, 'Grupo', 'avatar11', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (1, 'CS', 'avatar5', 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (5, 'Mais', 'avatar7', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (9, 'Spot', 'avatar4', 1);
INSERT INTO sala(idperfil, avatar, adulto) VALUES (3, 'avatar9', 0);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (12, 'HOJE', 'avatar10', 1);
INSERT INTO sala(idperfil, nome, avatar, adulto) VALUES (6, 'Animais e Plantas', 'avatar7', 0);

--SUBSCRIÇAO_SALA
INSERT INTO subscricaosala(idperfil, idsala) VALUES (4,1);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (7,2);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (1,3);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (11,2);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (11,3);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (7,4);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (4,5);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (11,4);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (9,6);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (6,6);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (13,6);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (12,6);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (6,7);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (15,5);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (8,9);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (5,9);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (3,9);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (10,10);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (8,10);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (2,10);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (4,10);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (7,10);
INSERT INTO subscricaosala(idperfil, idsala) VALUES (15,10);

--CHAT
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.1');
INSERT INTO chat(idsala, nome) VALUES (1, 'Sala 1.2');
INSERT INTO chat(idsala, nome) VALUES (2, 'Mais');
INSERT INTO chat(idsala, nome) VALUES (3, 'Quem sabe');
INSERT INTO chat(idsala, nome) VALUES (3, 'Quem não sabe');
INSERT INTO chat(idsala, nome) VALUES (4, 'NOSSO');
INSERT INTO chat(idsala, nome) VALUES (5, 'CS');
INSERT INTO chat(idsala, nome) VALUES (5, 'Skins');
INSERT INTO chat(idsala, nome) VALUES (4, 'A Maria é amiga');
INSERT INTO chat(idsala, nome) VALUES (5, 'best WEAPON');
INSERT INTO chat(idsala, nome) VALUES (2, 'CONVENIENTE');
INSERT INTO chat(idsala, nome) VALUES (6, 'Mais');
INSERT INTO chat(idsala, nome) VALUES (7, 'El Spot');
INSERT INTO chat(idsala, nome) VALUES (8, 'Algo');
INSERT INTO chat(idsala, nome) VALUES (9, 'ReFLEXão');
INSERT INTO chat(idsala, nome) VALUES (10, 'Animais');
INSERT INTO chat(idsala, nome) VALUES (10, 'Plantas');
INSERT INTO chat(idsala, nome) VALUES (null, 'Pedro.Tiago');
INSERT INTO chat(idsala, nome) VALUES (null, 'Maria.Paulo');
INSERT INTO chat(idsala, nome) VALUES (null, 'Paulo.Sofia');
INSERT INTO chat(idsala, nome) VALUES (null, 'Maria.Sofia');
INSERT INTO chat(idsala, nome) VALUES (null, 'Ana.Maria');
INSERT INTO chat(idsala, nome) VALUES (null, 'Guilherme.Marta');
INSERT INTO chat(idsala, nome) VALUES (null, 'Sofia.Tiago');
INSERT INTO chat(idsala, nome) VALUES (null, 'João.Paulo');

--MENSAGEM
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 1, 'Sala de teste', 21.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 1, 'A testar chat 1', 21.31, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 1, 'A testar chat 2', 21.32, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(1, 4, 'parece ok', 21.47, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(2, 4, 'também parece ok', 21.47, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(3, 2, 'festa!!', 09.34, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(3, 7, 'bam bora!!', 12.11, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 4, 'Alguem sabe se amanha chove?', 18.43, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 11, 'Alguem sabe se hoje chove?', 18.52, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(4, 1, 'alguém sabe se chove sequer??', 20.29, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(5, 1, 'não fazia ideia que beluga era uma baleia e uma vodka', 11.54, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(5, 4, 'grande beluga!', 13.10, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(6, 2, 'Este é o nosso grupo!', 12.03, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(6, 7, 'nice', 13.18, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(6, 11, 'Bacano', 13.22, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(7, 1, 'O nome diz tudo', 13.22, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(7, 1, 'Partilhem o vosso conhecimento e experiencias', 13.23, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(9, 2, 'Só porque me AMAM', 17.49, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(9, 11, 'es doente maria', 19.04, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(9, 2, 'oh... tu adoras-me esta calada', 21.28, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(9, 7, '100% com a sofia', 22.01, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(9, 2, 'tinha de ser ne Paulo', 22.03, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(11, 7, 'o conveniente...', 10.24, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(12, 5, 'Pensar Mais', 10.24, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(12, 6, 'Vamos!', 13.51, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(12, 12, 'boa, estamos juntos', 15.20, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(13, 9, 'O spot', 20.33, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(13, 6, 'o spot!', 20.35, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(13, 7, 'El spot!!', 21.02, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(10, 15, 'so quero aw', 23.12, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(10, 1, 'm4 primo', 23.20, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 12, 'Porque o people tem de refletir', 14.36, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 5, 'ora nem mais', 14.50, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 8, 'Ve se cada coisa', 15.05, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(15, 8, 'Fico chocadas as vezes', 15.06, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(16, 6, 'Tudo sobre animais', 11.27, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(17, 6, 'Tudo sobre plantas', 11.30, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(16, 7, 'la mosca domestic que dura um dia', 15.05, 1);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(16, 7, 'todas as plantas?', 15.07, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(16, 6, 'Com moderação', 15.18, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 1, 'Como vai isso irmao?', 12.28, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 4, 'Tranquilo e contigo?', 12.31, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 1, 'Impec já sabes', 12.31, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 1, 'Ando ai com uns projetos engraçados', 12.32, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(18, 4, 'Ui depois tens de contar brother', 12.32, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(19, 7, 'tens o numero do jorge?', 18.41, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(19, 2, 'nao, pergunta a Sofia', 18.41, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(20, 7, 'nao tens o numero do jorge nao?', 18.45, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(23, 13, 'Podias ter dito aquilo de outra forma', 21.57, 0);
INSERT INTO mensagem(idchat, idperfil, mensagem, tempo, pinned) VALUES(23, 15, 'talvez, fazer o quê?', 22.01, 0);

--EMOJI
INSERT INTO emoji(nome, emoji) VALUES ('sorrir', ':)');		--1
INSERT INTO emoji(nome, emoji) VALUES ('triste', ':(');		--2
INSERT INTO emoji(nome, emoji) VALUES ('beijo', ':*');		--3
INSERT INTO emoji(nome, emoji) VALUES ('coração', '<3');	--4
INSERT INTO emoji(nome, emoji) VALUES ('língua', ':P');		--5
INSERT INTO emoji(nome, emoji) VALUES ('xisdê', 'xD');		--6
INSERT INTO emoji(nome, emoji) VALUES ('pog', ':P');		--7
INSERT INTO emoji(nome, emoji) VALUES ('wink', ';)');		--8
INSERT INTO emoji(nome, emoji) VALUES ('sealed', ':X');		--9
INSERT INTO emoji(nome, emoji) VALUES ('dead', 'X(');		--10
INSERT INTO emoji(nome, emoji) VALUES ('angry', ':-|');		--11
INSERT INTO emoji(nome, emoji) VALUES ('cool', 'B-)');		--12
INSERT INTO emoji(nome, emoji) VALUES ('suprised', ':O');	--13
INSERT INTO emoji(nome, emoji) VALUES ('heartbreak', '</3');--14
INSERT INTO emoji(nome, emoji) VALUES ('sorrir+', ':D');	--15

--EMOJI_MENSAGEM
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (4, 1, 11);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (6, 12, 9);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (6, 12, 10);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (10, 10, 31);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (12, 6, 16);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (24, 15, 13);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (29, 4, 11);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (34, 13, 18);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (39, 5, 19);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (40, 6, 15);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (40, 7, 16);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (47, 5, 23);
INSERT INTO emojimensagem(idmensagem, idemoji, posicao) VALUES (49, 5, 1);

--REACAO
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (4, 1, 15, 21.50);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (6, 7, 15, 12.10);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (17, 4, 8, 19.44);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (24, 9, 1, 10.02);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (29, 9, 4, 21.05);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (29, 6, 12, 21.13);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (30, 1, 14, 23.19);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (35, 12, 9, 15.53);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (37, 7, 4, 15.04);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (36, 2, 3, 16.40);
INSERT INTO reacao(idmensagem, idperfil, idemoji, tempo) VALUES (38, 2, 6, 16.40);
