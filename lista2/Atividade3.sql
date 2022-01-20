-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
-- deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.
CREATE DATABASE IF NOT EXISTS db_farmacia_do_bem;

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    disponivel BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
-- atributos relevantes para se trabalhar com o serviço deste farmacia(não
-- esqueça de criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produto(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    prescricao BOOLEAN,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (nome, disponivel) VALUES
('Medicamentos', true),
('Genéricos', true),
('Cosméticos', true),
('Infantil', true),
('Bem-Estar', true);

SELECT * FROM tb_categoria;

-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto (nome, valor, prescricao, categoria_id) VALUES
('Forxiga 10mg', 54, true, 1),
('Tamiflu 75mg', 77.5, true, 1),
('Nimesulida 100mg', 80, true, 1),
('Orlistate 120mg', 19, true, 2),
('Fluconazol 150mg', 17.5, false, 2),
('Kit Sabonete', 15.60, false, 3),
('Desodorante', 22, false, 3),
('Suplemento infantil', 90, false, 4);

SELECT * FROM tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome LIKE '%B%' OR nome LIKE '%b%';

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT 
tb_produto.nome, tb_categoria.nome as 'categoria', tb_produto.valor 
FROM tb_produto 
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são cosméticos).
SELECT 
tb_produto.nome, tb_categoria.nome as 'categoria' 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = 'Cosméticos';