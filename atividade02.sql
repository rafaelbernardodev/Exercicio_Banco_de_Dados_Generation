-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_ecomerce;
USE db_ecomerce;

-- Criação da tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0),
    estoque INT NOT NULL
);

-- Inserção de dados
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Lenovo IdeaPad 3', 'Informática', 3299.90, 15),
('Mouse Logitech M170', 'Periféricos', 79.90, 120),
('Teclado Mecânico Redragon Kumara', 'Periféricos', 289.90, 45),
('Monitor LG 24" Full HD', 'Informática', 899.90, 22),
('HD Externo Seagate 1TB', 'Armazenamento', 349.90, 30),
('Pen Drive Sandisk 64GB', 'Armazenamento', 59.90, 200),
('Impressora HP DeskJet 2774', 'Impressão', 499.90, 18),
('Roteador TP-Link Archer C6', 'Redes', 299.90, 27);

-- Produtos com valor maior que 500
SELECT id, nome, preco, categoria, estoque
FROM produtos
WHERE preco > 500;

-- Produtos com valor menor que 500
SELECT id, nome, preco, categoria, estoque
FROM produtos
WHERE preco < 500;

-- Atualização de valor
UPDATE produtos
SET preco = 549.00
WHERE id = 5;
