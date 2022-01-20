-- Crie um banco de dados para um serviço de um game Online , 
-- o nome do banco deverá ser db_generation_game_online, onde, 
-- o sistema trabalhará com as informações dos personagens desse game.
CREATE DATABASE IF NOT EXISTS db_generation_game_online;

-- O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
-- relevantes da classe para se trabalhar com o serviço desse game Online.
USE db_generation_game_online;
CREATE TABLE tb_classe(
	id INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    arma VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos personagens para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    defesa INT NOT NULL,
    ataque INT NOT NULL,
    classe_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule a tabela classe com até 5 dados.
INSERT INTO tb_classe (nome, arma) VALUES
('Guerreiro', 'Espada'),
('Feiticeiro', 'Varinha'),
('Arqueiro', 'Arco e flecha'),
('Fera', 'Garras'),
('Místico', 'Fogo');

SELECT * FROM tb_classe;

-- Popule a tabela personagem com até 8 dados.
INSERT INTO tb_personagens (nome, defesa, ataque, classe_id) VALUES
('Chloegia', 1852, 2279, 2),
('Bongsan', 2441,  479, 5),
('Railspoa', 1351, 1910, 3),
('Phewdesu', 1815, 3973, 4),
('Hulkingstein', 4498, 4948, 1),
('Jewelsan', 2138, 691, 5),
('Potatoesoff', 2222, 401, 2),
('Vyojuvenile', 1511, 4654, 2);

SELECT * FROM tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
SELECT * FROM tb_personagens WHERE nome LIKE '%C%' OR nome LIKE '%c%';

-- Faça um um select com Inner join entre tabela classe e personagem.
SELECT 
tb_personagens.nome, tb_classe.nome as 'classe', tb_classe.arma,
tb_personagens.defesa, tb_personagens.ataque
FROM tb_personagens 
INNER JOIN tb_classe 
ON tb_personagens.classe_id = tb_classe.id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
SELECT 
tb_personagens.nome, tb_classe.nome as 'classe' 
FROM tb_personagens 
INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id
WHERE tb_classe.nome = 'Arqueiro';