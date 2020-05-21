-- int1 _ obter o número total de perfis premium e grátis

.mode columns
.headers on
.nullvalue NULL

SELECT 
(SELECT COUNT(*)
FROM perfilpremium) AS TotalPerfilPremium
,(SELECT COUNT(*)
FROM perfilgratis) AS TotalPerfilGratis