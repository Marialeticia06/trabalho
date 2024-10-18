-- Criação do banco de dados
CREATE DATABASE sistema_gestao_turmas;

-- Seleciona o banco de dados
USE sistema_gestao_turmas;

-- Tabela para armazenar informações dos professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

-- Tabela para armazenar informações das turmas
CREATE TABLE turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela para armazenar informações das atividades
CREATE TABLE atividades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    data_encerramento DATE NOT NULL,
    duracao VARCHAR(10) NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turmas(id) ON DELETE CASCADE
);
