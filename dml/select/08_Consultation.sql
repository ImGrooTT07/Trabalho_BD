-- 8. Total pago por locação
SELECT id_locacao, SUM(valor_pago) AS total_pago
FROM Pagamentos
GROUP BY id_locacao
HAVING SUM(valor_pago) > 200;