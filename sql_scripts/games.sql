-- Criação do banco de dados
CREATE DATABASE GameStoreDB;
USE GameStoreDB;

-- Criação da tabela Desenvolvedores
CREATE TABLE Desenvolvedores (
    DevID INT PRIMARY KEY,
    Nome VARCHAR(100),
    PaisOrigem VARCHAR(50)
);

-- Criação da tabela Jogos
CREATE TABLE Jogos (
    JogoID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    DevID INT,
    Preco DECIMAL(10,2),
    QuantidadeEstoque INT,
    AnoLancamento INT,
    FOREIGN KEY (DevID) REFERENCES Desenvolvedores(DevID)
);

-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Inserindo dados nas tabelas
INSERT INTO Desenvolvedores (DevID, Nome, PaisOrigem) VALUES (1, 'Nintendo', 'Japão');
INSERT INTO Desenvolvedores (DevID, Nome, PaisOrigem) VALUES (2, 'Valve', 'Estados Unidos');

INSERT INTO Jogos (JogoID, Titulo, DevID, Preco, QuantidadeEstoque, AnoLancamento) VALUES
    (1, 'The Legend of Zelda', 1, 299.90, 15, 1986),
    (2, 'Portal 2', 2, 49.90, 8, 2011);

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
    (1, 'Carlos Souza', 'carlos@email.com', '21988887777');

-- Atualizando o preço de um jogo
UPDATE Jogos SET Preco = 319.90 WHERE JogoID = 1;

-- Excluindo um jogo
DELETE FROM Jogos WHERE JogoID = 2;
