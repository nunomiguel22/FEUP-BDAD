--utilizadores que tenham um numero de mensagem maior que a media numero de mensagem por chat


.mode columns
.headers on
.nullvalue NULL

select perfil.nome, count(*) as numero_de_mensagens
from mensagem natural join
	perfil

group by mensagem.idperfil
having count(*) > (select avg(media_mensagem_chat) from (select count(idmensagem) as media_mensagem_chat
													from chat left join mensagem
													on chat.idchat = mensagem.idchat
													group by chat.idchat));


		