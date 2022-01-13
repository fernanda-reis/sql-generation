-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
CREATE DATABASE db_ecommerce;

-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
USE db_ecommerce;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
	categoria VARCHAR(20),
	valor DECIMAL(10,2),
	disponivel BOOLEAN,
	PRIMARY KEY (id)
);

-- Popule esta tabela com até 8 dados;
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

-- Faça um select que retorne os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE valor > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE valor < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_produtos SET disponivel = false WHERE id=3;