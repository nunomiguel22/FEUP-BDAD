.mode columns
.headers ON
PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

.print Estado inicial\n
SELECT * FROM perfilgratis WHERE idperfil = 3;

DELETE FROM perfilgratis WHERE idperfil = 3;

.print Eliminar perfil gratis sem ter perfil premium é ignorado
SELECT * FROM perfilgratis WHERE idperfil = 3;

INSERT INTO perfilpremium(idperfil, mensalidade) VALUES (3, 5.99);
DELETE FROM perfilgratis WHERE idperfil = 3;
DELETE FROM perfilgratis WHERE idperfil = 3;

.print Ao adicionar perfil premium ja e permitido
SELECT * FROM perfilgratis WHERE idperfil = 3;
