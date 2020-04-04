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
