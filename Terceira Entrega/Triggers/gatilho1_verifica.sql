.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Pedro Vale', 'pedro', 'pedroPass', 'pedrovale@gmail.com', 'avatar5');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Maria Filipa', 'maria', 'mariaPass', 'maria@gmail.com', 'avatar11');
INSERT INTO perfil(nome, username, password, email, avatar) VALUES ('Mário Teixeira', 'mario', 'marioPass', 'mario@gmail.com', 'avatar3');

SELECT * FROM perfilgratis
inner join perfil
on perfilgratis.idperfil = perfil.idperfil
