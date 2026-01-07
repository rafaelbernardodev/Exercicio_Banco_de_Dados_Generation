-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_escola;
USE db_escola;

-- Criação da tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turno VARCHAR(60) NOT NULL,
    ano_escolar VARCHAR(60),
    media_escolar DECIMAL(3,1) NOT NULL
);

-- Inserção de dados
INSERT INTO alunos (nome, turno, ano_escolar, media_escolar) VALUES
('Ana Paula Silva', 'Manhã', '1º Ano', 7.8),
('Bruno Henrique Costa', 'Tarde', '2º Ano', 6.5),
('Camila Rodrigues', 'Manhã', '3º Ano', 8.9),
('Diego Fernandes', 'Noite', '3º Ano', 7.2),
('Eduarda Martins', 'Tarde', '1º Ano', 9.1),
('Felipe Araujo', 'Manhã', '2º Ano', 5.9),
('Gabriela Nunes', 'Noite', '1º Ano', 8.3),
('Lucas Pereira', 'Tarde', '3º Ano', 6.8);

-- Alunos com notas maior que 7.0
SELECT *
FROM alunos
WHERE media_escolar > 7.0;

-- Alunos com notas menor que 7.0
SELECT *
FROM alunos
WHERE media_escolar < 7.0;

-- Atualização de nota
UPDATE alunos
SET media_escolar = 6.9
WHERE id = 4;
