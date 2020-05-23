.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

CREATE TRIGGER IF NOT EXISTS T3
BEFORE delete ON perfilgratis
WHEN (NOT EXISTS (SELECT 1 FROM perfilpremium where idperfil = Old.idperfil))
    BEGIN
        SELECT RAISE(IGNORE);
    END;
