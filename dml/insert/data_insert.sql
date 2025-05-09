-- Insert Clientes
INSERT INTO Clientes (nome, cpf, telefone, email, endereco) VALUES
('João Silva', '123.456.789-00', '11999999999', 'joao@gmail.com', 'Rua A, 100'),
('Maria Souza', '987.654.321-00', '21988888888', 'maria@gmail.com', 'Rua B, 200'),
('Carlos Lima', '111.222.333-44', '31977776666', 'carlos@gmail.com', 'Rua C, 300'),
('Ana Paula', '555.666.777-88', '11999995555', 'ana@gmail.com', 'Rua D, 400'),
('Bruno Costa', '222.333.444-55', '11912345678', 'bruno@gmail.com', 'Rua E, 500'),
('Fernanda Alves', '666.777.888-99', '21923456789', 'fernanda@gmail.com', 'Rua F, 600'),
('Lucas Rocha', '333.444.555-66', '31934567890', 'lucas@gmail.com', 'Rua G, 700'),
('Juliana Reis', '444.555.666-77', '11945678901', 'juliana@gmail.com', 'Rua H, 800'),
('Pedro Henrique', '777.888.999-00', '21956789012', 'pedro@gmail.com', 'Rua I, 900'),
('Patrícia Moura', '888.999.000-11', '31967890123', 'patricia@gmail.com', 'Rua J, 1000');

-- Insert Veículos
INSERT INTO Veiculos (tipo, modelo, marca, placa, ano, disponivel) VALUES
('Carro', 'Onix', 'Chevrolet', 'ABC1D23', 2020, TRUE),
('Carro', 'Civic', 'Honda', 'XYZ9K88', 2022, TRUE),
('Moto', 'CG 160', 'Honda', 'MOT1234', 2021, TRUE),
('Carro', 'Gol', 'Volkswagen', 'DEF4567', 2019, FALSE),
('Moto', 'Fazer 250', 'Yamaha', 'MOT5678', 2020, TRUE),
('Carro', 'HB20', 'Hyundai', 'GHI7890', 2021, TRUE),
('Carro', 'Corolla', 'Toyota', 'JKL1234', 2023, TRUE),
('Moto', 'XRE 300', 'Honda', 'MOT4321', 2022, TRUE),
('Carro', 'Uno', 'Fiat', 'MNO5678', 2018, FALSE),
('Carro', 'Argo', 'Fiat', 'PQR6789', 2021, TRUE);

-- Insert Locações
INSERT INTO Locacoes (id_cliente, id_veiculo, data_inicio, data_fim, valor_total, status) VALUES
(1, 1, '2025-05-01', '2025-05-07', 700.00, 'Finalizada'),
(2, 3, '2025-05-05', '2025-05-10', 300.00, 'Ativa'),
(3, 2, '2025-04-10', '2025-04-15', 600.00, 'Finalizada'),
(4, 5, '2025-03-01', '2025-03-05', 400.00, 'Cancelada'),
(5, 4, '2025-01-15', '2025-01-20', 500.00, 'Finalizada'),
(6, 6, '2025-02-01', '2025-02-10', 900.00, 'Finalizada'),
(7, 7, '2025-05-01', '2025-05-03', 250.00, 'Ativa'),
(8, 8, '2025-04-20', '2025-04-25', 450.00, 'Finalizada'),
(9, 9, '2025-03-10', '2025-03-17', 800.00, 'Finalizada'),
(10, 10, '2025-05-02', NULL, 0.00, 'Ativa');

-- Insert Pagamentos
INSERT INTO Pagamentos (id_locacao, data_pagamento, valor_pago, metodo_pagamento) VALUES
(1, '2025-05-01', 700.00, 'Cartão'),
(2, '2025-05-05', 150.00, 'Pix'),
(3, '2025-04-10', 600.00, 'Dinheiro'),
(4, '2025-03-01', 400.00, 'Cartão'),
(5, '2025-01-15', 500.00, 'Pix'),
(6, '2025-02-01', 900.00, 'Dinheiro'),
(7, '2025-05-01', 250.00, 'Cartão'),
(8, '2025-04-20', 450.00, 'Pix'),
(9, '2025-03-10', 800.00, 'Cartão'),
(10, '2025-05-02', 0.00, 'Dinheiro');

-- Insert Manutenções
INSERT INTO Manutencoes (id_veiculo, descricao, data_manutencao, custo) VALUES
(1, 'Troca de óleo', '2024-12-01', 150.00),
(2, 'Alinhamento e balanceamento', '2025-01-20', 200.00),
(3, 'Revisão completa', '2025-02-15', 300.00),
(4, 'Substituição de pneus', '2025-03-10', 400.00),
(5, 'Troca de pastilhas de freio', '2025-04-05', 250.00),
(6, 'Manutenção no motor', '2025-03-25', 1000.00),
(7, 'Reparo no ar-condicionado', '2025-02-10', 350.00),
(8, 'Troca de óleo', '2025-01-15', 160.00),
(9, 'Reparo na suspensão', '2025-04-01', 600.00),
(10, 'Check-up geral', '2025-05-01', 180.00);
