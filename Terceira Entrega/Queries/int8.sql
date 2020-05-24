--percentagem de mensagens que o ultilizador id 2 manda e que recebem reaçoes

.mode columns
.headers on
.nullvalue NULL

select  perfil.nome, ((select count(*)*1.0 
					from reacao natural join
						 perfil
					where reacao.idperfil = 2) / count(*))  as percentagem_de_reacoes

from mensagem natural join
	 perfil
where mensagem.idperfil = 2 ;