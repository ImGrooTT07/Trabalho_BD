-- Create table Clientes
CREATE TABLE Clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
	endereco VARCHAR(255)
);

-- Create table Veículos
CREATE TABLE Veiculos (
    id_veiculo SERIAL PRIMARY KEY,
    tipo VARCHAR(10) CHECK (tipo IN ('Carro', 'Moto')) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    placa VARCHAR(10) NOT NULL UNIQUE,
    ano INT CHECK (ano >= 2000),
    disponivel BOOLEAN DEFAULT TRUE
);

-- Create table Locações
CREATE TABLE Locacoes (
    id_locacao SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL REFERENCES Clientes(id_cliente),
    id_veiculo INT NOT NULL REFERENCES Veiculos(id_veiculo),
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor_total NUMERIC(10,2) CHECK (valor_total >= 0),
    status VARCHAR(15) DEFAULT 'Ativa' CHECK (status IN ('Ativa', 'Finalizada', 'Cancelada'))
);

-- Create table Pagamentos
CREATE TABLE Pagamentos (
    id_pagamento SERIAL PRIMARY KEY,
    id_locacao INT NOT NULL REFERENCES Locacoes(id_locacao),
    data_pagamento DATE NOT NULL,
    valor_pago NUMERIC(10,2) CHECK (valor_pago >= 0),
    metodo_pagamento VARCHAR(15) CHECK (metodo_pagamento IN ('Dinheiro', 'Cartão', 'Pix'))
);

-- Create table Manutenções
CREATE TABLE Manutencoes (
    id_manutencao SERIAL PRIMARY KEY,
    id_veiculo INT NOT NULL REFERENCES Veiculos(id_veiculo),
    descricao TEXT NOT NULL,
    data_manutencao DATE NOT NULL,
    custo NUMERIC(10,2) CHECK (custo >= 0)
);