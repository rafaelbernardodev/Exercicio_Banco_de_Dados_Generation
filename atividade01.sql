-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_rh;
USE db_rh;

-- Criação da tabela de funcionários
CREATE TABLE IF NOT EXISTS funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(60) NOT NULL,
    salario DECIMAL(10,2) NOT NULL CHECK (salario >= 0),
    data_admissao DATE NOT NULL
);

-- Inserção de dados
INSERT INTO funcionarios (nome, cargo, salario, data_admissao) VALUES
('Rafael Bernardo', 'Analista de Dados', 2700.00, '2023-03-15'),
('Janio Almeida', 'Desenvolvedor Backend', 3800.00, '2023-01-10'),
('Daniel Lucena', 'Desenvolvedor Frontend', 3500.00, '2022-08-20'),
('Diogo Shiroto', 'Desenvolvedor Web', 2600.00, '2024-02-05'),
('Carlos Henrique', 'Administrador', 5000.00, '2021-11-01');

-- Funcionários com salário maior que 2000
SELECT id, nome, cargo, salario, data_admissao
FROM funcionarios
WHERE salario > 2000;

-- Funcionários com salário menor que 2000
SELECT id, nome, cargo, salario, data_admissao
FROM funcionarios
WHERE salario < 2000;

-- Atualização de salário
UPDATE funcionarios
SET salario = 3000.00
WHERE id = 1;
