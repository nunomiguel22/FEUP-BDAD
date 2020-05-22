-- int6 _ obter todas as mensagens enviadas entre as 20.00 e 23.59

.mode columns
.headers on
.nullvalue NULL

SELECT chat.nome AS nomeChat, perfil.nome AS nomePerfil, pinned, tempo, mensagem
FROM mensagem
INNER JOIN chat USING(idchat)
INNER JOIN perfil USING(idperfil)
WHERE tempo BETWEEN 20.00 AND 23.59
ORDER BY chat.nome