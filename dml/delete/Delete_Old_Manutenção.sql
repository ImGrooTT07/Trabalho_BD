-- Deletar manutenções antigas e baratas
DELETE FROM Manutencoes 
WHERE data_manutencao < '2024-01-01' AND custo < 200.00;