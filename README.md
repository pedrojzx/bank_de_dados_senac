------Descrição do Banco de Dados------

O banco de dados criado é para uma loja de games fictícia chamada GameStoreDB. Ele foi projetado para armazenar informações essenciais sobre desenvolvedores, jogos e clientes. O banco de dados possui três tabelas principais:

Desenvolvedores: Armazena dados dos estúdios e desenvolvedores, como nome e país de origem.
Jogos: Guarda informações dos jogos, incluindo título, desenvolvedor, preço, gênero, quantidade em estoque e ano de lançamento.
Clientes: Contém os dados dos clientes da loja de games.

------Objetivo do Projeto e Aprendizado------

O objetivo deste projeto foi praticar e consolidar o uso dos comandos DDL (Data Definition Language) e DML (Data Manipulation Language) em SQL, criando um banco de dados do zero. Ao concluir o projeto, aprendi a:

Planejar a estrutura de um banco de dados relacional.

Criar tabelas e definir relacionamentos entre elas.

Inserir, atualizar e excluir dados usando comandos SQL.

Alterar a estrutura de tabelas existentes.

Esses conhecimentos são fundamentais para o desenvolvimento de sistemas que dependem de armazenamento e manipulação de dados — como plataformas de vendas, catálogo de games e sistemas de estoque.

------Instruções para Executar o Script SQL------

Abra seu gerenciador de banco de dados (como MySQL Workbench, DBeaver, phpMyAdmin ou terminal do MySQL). Crie uma nova conexão, se necessário.

Abra o arquivo gamestore.sql no editor do gerenciador.

Execute o script inteiro. O script irá:

Criar o banco de dados GameStoreDB.

Criar as tabelas necessárias.

Inserir alguns dados de exemplo.

Demonstrar comandos de atualização e exclusão.

------Comandos DDL e DML em SQL: O que são e como usar?------

Quando trabalhamos com bancos de dados relacionais, usamos SQL para criar, modificar e manipular dados. Os comandos SQL são divididos em dois grandes grupos: DDL e DML. Vamos entender cada um e ver exemplos aplicados ao contexto de uma loja de games!

------O que é DDL (Data Definition Language)?------

DDL significa “Linguagem de Definição de Dados”. São comandos usados para definir a estrutura do banco de dados, como criar, alterar ou excluir tabelas e bancos de dados.

------Comandos DDL mais comuns------

CREATE: Cria um novo banco de dados ou tabela.

ALTER: Altera a estrutura de uma tabela existente.

DROP: Exclui uma tabela ou banco de dados.

------Exemplos práticos de DDL------

Criar um banco de dados:

CREATE DATABASE GameStoreDB;


Criar uma tabela:

CREATE TABLE Jogos (
    JogoID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    DesenvolvedorID INT,
    Preco DECIMAL(10,2),
    Genero VARCHAR(50),
    QuantidadeEstoque INT
);


Alterar uma tabela (adicionar uma coluna):

ALTER TABLE Jogos ADD AnoLancamento INT;


------O que é DML (Data Manipulation Language)?------

DML significa “Linguagem de Manipulação de Dados”. São comandos usados para inserir, atualizar, consultar ou excluir os dados armazenados nas tabelas.

Comandos DML mais comuns:

INSERT: Insere novos dados.

UPDATE: Atualiza registros existentes.

DELETE: Remove registros.

SELECT: Consulta dados (parte do DML, embora não esteja sendo aprofundado aqui).

------Exemplos práticos de DML------

Inserir um jogo na tabela:

INSERT INTO Jogos (JogoID, Titulo, DesenvolvedorID, Preco, Genero, QuantidadeEstoque, AnoLancamento)
VALUES (1, 'Elder Quest', 1, 199.90, 'RPG', 15, 2023);


Atualizar o preço de um jogo:

UPDATE Jogos SET Preco = 179.90 WHERE JogoID = 1;


Excluir um jogo:

DELETE FROM Jogos WHERE JogoID = 1;


------Resumindo------

DDL: Define a estrutura do banco de dados (criar, alterar, excluir tabelas).

DML: Manipula os dados dentro das tabelas (inserir, atualizar, excluir registros).

Saber quando usar cada tipo de comando é fundamental para criar e gerenciar bancos de dados de maneira eficiente — especialmente em sistemas como catálogos de jogos, plataformas de vendas e controle de estoque.
