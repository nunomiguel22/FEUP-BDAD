.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Pedro Vale', 'pedro', 'pedroPass', 'pedrovale2@gmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Filipa', 'maria', 'mariaPass', 'maria2@gmail.com', 'avatar11');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Mário Teixeira', 'mario', 'marioPass', 'mario2@gmail.com', 'avatar3');

INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,3, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (2,1, 1);
INSERT INTO amizade(idperfil1, idperfil2, amizade) VALUES (1,1, 1);

Select * from amizade;
