.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--Cria perfil gratis ao criar um perfil
CREATE TRIGGER IF NOT EXISTS T1
after insert on perfil
    for each ROW 
        BEGIN
            INSERT INTO perfilgratis(idperfil, emojis, reacoes) VALUES (New.idperfil, 0, 0);
        END;
