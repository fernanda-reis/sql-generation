-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa.
CREATE DATABASE db_rh;

-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
USE db_rh;
CREATE TABLE tb_funcionaries(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	idade INT,
	funcao VARCHAR(40),
	salario DECIMAL(10,2),
	PRIMARY KEY (id)
);

-- Popule esta tabela com até 5 dados;
INSERT INTO tb_funcionaries (nome, idade, funcao, salario) VALUES 
('Fernanda', 23, 'Desenvolvedor', 5000.00),
('João', 31, 'Analista', 3000.00),
('Paula', 19, 'Assistente', 5000.00),
('Maria', 33, 'Supervisor', 10000.00),
('Paulinho', 20, 'Estagiário', 900.00);

SELECT * FROM tb_funcionaries;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
SELECT * FROM tb_funcionaries WHERE salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
SELECT * FROM tb_funcionaries WHERE salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_funcionaries SET salario = 5000 WHERE id = 1;