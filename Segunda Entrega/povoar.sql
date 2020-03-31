PRAGMA foreign_keys = on;

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
