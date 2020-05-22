-- int3 _ obter pedidos de amizade de Mário Teixeira -> idperfil 3

.mode columns
.headers on
.nullvalue NULL

SELECT perfil.nome AS PedidosDeAmizade
FROM perfil
WHERE EXISTS
(SELECT *
FROM amizade
WHERE perfil.idperfil = amizade.idperfil1
AND amizade.idperfil2 = 3
AND amizade.amizade IS NULL)