-- Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
-- banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
-- sistema trabalhará com as informações dos produtos desta empresa.
CREATE DATABASE IF NOT EXISTS db_cidade_das_frutas;

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
USE db_cidade_das_frutas;
CREATE TABLE tb_categoria(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL, 
    disponivel BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
-- relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
-- criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produto(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    pesoMedio DECIMAL(10,2) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (nome, disponivel) VALUES
('Ácidas', true),
('Semiácidas', true),
('Doces', true),
('Hiper-hídricas', true),
('Oleaginosas', true);

SELECT * FROM tb_categoria;

-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto (nome, valor, pesoMedio, categoria_id) VALUES
('Limão', 25, 0.3, 1),
('Laranja', 30, 0.4, 1),
('Abacaxi', 40, 0.6, 1),
('Manga', 20, 0.3, 2),
('Banana', 10, 0.3, 3),
('Melancia', 65, 3.0, 4),
('Abacate', 40, 2.0, 5),
('Castanha-de-caju', 70, 0.2, 5);

SELECT * FROM tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE nome LIKE '%C%' OR nome LIKE '%c%';

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT 
tb_produto.nome, tb_categoria.nome as 'tipo', tb_produto.valor 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são aves ou legumes).
SELECT 
tb_produto.nome, tb_categoria.nome as 'tipo' 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = 'Ácidas';