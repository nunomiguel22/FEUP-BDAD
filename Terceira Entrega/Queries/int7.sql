--soma dos emojis usados na sala 3 

.mode columns
.headers on
.nullvalue NULL

select idemoji, count(*) 
from emojimensagem natural join
	 mensagem natural join
	 chat
where chat.idsala = 3
group by emojimensagem.idemoji
order by count(*) desc;