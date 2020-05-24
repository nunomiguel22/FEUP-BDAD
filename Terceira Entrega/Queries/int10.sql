--sala com mais subscricoes de perfis premium

.mode columns
.headers on
.nullvalue NULL

select idsala, max(subscricoespremium)
from ( select subscricaosala.idsala, count(subscricaosala.idperfil) as subscricoespremium
	   from subscricaosala natural join
	        (select idperfil
			 from perfil natural join 
			 perfilpremium)
	   group by idsala);
