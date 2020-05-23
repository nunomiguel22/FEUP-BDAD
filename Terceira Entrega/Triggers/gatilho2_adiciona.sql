.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

--verifica se o pedido de amizade e feita para o proprio perfil
CREATE TRIGGER IF NOT EXISTS T2
BEFORE INSERT ON amizade
WHEN (New.idperfil1 = New.idperfil2)
    BEGIN
        SELECT RAISE(ABORT, "Pedido de amizade ao proprio perfil");       
    END;
