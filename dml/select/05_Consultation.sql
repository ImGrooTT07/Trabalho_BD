-- 5. Veículos que passaram por manutenção
SELECT DISTINCT V.modelo, V.placa
FROM Veiculos V
JOIN Manutencoes M ON V.id_veiculo = M.id_veiculo;