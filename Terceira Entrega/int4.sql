-- int4 _ obter salas iniciadas por 'S'

.mode columns
.headers on
.nullvalue NULL

SELECT sala.nome, perfil.nome AS administrador, sala.avatar
FROM sala
INNER JOIN perfil USING(idperfil)
WHERE sala.nome LIKE 's%'
ORDER BY sala.nome