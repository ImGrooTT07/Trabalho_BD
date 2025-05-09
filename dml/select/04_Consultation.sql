-- 4. Pagamentos com método Pix ou Dinheiro
SELECT * FROM Pagamentos
WHERE metodo_pagamento IN ('Pix', 'Dinheiro');