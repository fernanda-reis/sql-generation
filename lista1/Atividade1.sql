CREATE DATABASE db_rh;

USE db_rh;
CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	idade INT,
	funcao VARCHAR(40),
	salario DECIMAL(10,2),
	PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, idade, funcao, salario) VALUES 
('Fernanda', 23, 'Desenvolvedor', 5000.00),
('João', 31, 'Analista', 3000.00),
('Paula', 19, 'Assistente', 5000.00),
('Maria', 33, 'Supervisor', 10000.00),
('Paulinho', 20, 'Estagiário', 900.00);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 5000 WHERE id = 1;