CREATE DATABASE db_ecommerce;

USE db_ecommerce;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
	categoria VARCHAR(20),
	valor DECIMAL(10,2),
	disponivel BOOLEAN,
	PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, valor, disponivel) VALUES 
("Caneca", "Cozinha", 122.30, true),
("Prato", "Cozinha", 991.20, true),
("Travesseiro", "Quarto", 650.00, true),
("Luminária", "Quarto", 230.30, true),
("Sofá", "Sala", 3200.78, true),
("Tapete", "Sala", 900.49, false),
("Cortina", "Sala", 550.59, true),
("Lâmpada", "Variedades", 300.29, true);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET disponivel = false WHERE id=3;