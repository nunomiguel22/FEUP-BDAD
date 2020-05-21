-- int2 _ obter salas com conteúdo adulto

.mode columns
.headers on
.nullvalue NULL

SELECT sala.nome, perfil.nome AS administrador, sala.avatar
FROM sala
INNER JOIN perfil USING(idperfil)
WHERE adulto = 1
GROUP BY sala.nome