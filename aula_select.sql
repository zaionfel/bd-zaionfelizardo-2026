-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;

-- Criação da tabela de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT,
    desconto DECIMAL(5,2),
    telefone VARCHAR(20)
);

-- Inserção de dados de teste
INSERT INTO clientes (nome, cidade, idade, desconto, telefone) VALUES
('Ana Silva', 'São Paulo', 28, 15.00, '11999991111'),
('Bruno Santos', 'Rio de Janeiro', 35, 10.00, '21999992222'),
('Carla Souza', 'Belo Horizonte', 22, 0.00, NULL),
('Daniel Oliveira', 'São Paulo', 42, 20.00, '11999993333'),
('Eduardo Lima', 'Curitiba', 19, 5.00, NULL),
('Fernanda Costa', 'Porto Alegre', 31, 12.50, '51999994444'),
('Gabriel Alves', 'São Paulo', 50, 0.00, '11999995555'),
('Helena Rocha', 'Salvador', 25, 8.00, NULL);

 select * from clientes;
 SELECT nome, cidade, idade, desconto, telefone
FROM clientes
WHERE idade BETWEEN 20 AND 45
  AND cidade IN ('São Paulo', 'Rio de Janeiro')
  AND telefone IS NOT NULL
  AND (nome LIKE 'A%' OR nome LIKE 'B%' OR nome LIKE 'C%' OR nome LIKE 'D%' OR nome LIKE 'E%')
ORDER BY desconto DESC;