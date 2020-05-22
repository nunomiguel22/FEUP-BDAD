-- int5 _ obter chats privatos

.mode columns
.headers on
.nullvalue NULL

SELECT idchat AS idChat, nome AS nomeChat
FROM chat
WHERE idsala IS NULL
ORDER BY nome