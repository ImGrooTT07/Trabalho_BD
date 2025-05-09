-- 6. Número de locações por cliente
SELECT C.nome, COUNT(L.id_locacao) AS total
FROM Clientes C
JOIN Locacoes L ON C.id_cliente = L.id_cliente
GROUP BY C.nome;