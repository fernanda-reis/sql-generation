-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
-- deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
USE db_pizzaria_legal;
CREATE TABLE tb_categoria(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL, 
    disponivel BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes para se trabalhar com o serviço dessa pizzaria(não esqueça de
-- criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_pizza(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tempoDePreparo DECIMAL(10,2) NOT NULL, 
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (nome, disponivel) VALUES 
('Tradicionais', true),
('Vegetarianas', true),
('Doces', true),
('Veganas', false),
('Especiais', true);

SELECT * FROM tb_categoria;

-- Popule esta tabela pizza com até 8 dados.
INSERT INTO tb_pizza (nome, valor, tempoDePreparo, categoria_id) VALUES
('Calabresa', 16.2, 0.44, 1),
('Portuguesa', 37.5, 0.48, 1),
('Pão de alho', 46, 1.20, 2),
('Carne seca com banana', 50.70, 0.15, 5),
('Alcachofra', 25, 1.15, 4),
('Chocolate', 58, 0.37, 3),
('Sorvete', 80.5, 0.33, 3),
('Rúcula', 70, 0.46, 2);

SELECT * FROM tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_pizza WHERE valor > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_pizza WHERE nome LIKE '%C%' OR nome LIKE '%c%';

-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são pizza doce).
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = 'Doces';