-- Deletar clientes que nunca alugaram
DELETE FROM Clientes 
WHERE id_cliente NOT IN (SELECT DISTINCT id_cliente FROM Locacoes);