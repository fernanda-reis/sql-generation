-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
CREATE DATABASE db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
USE db_escola;
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idade INT,
	nota DECIMAL(10,2),
	matricula BOOLEAN,
	PRIMARY KEY (id) 
);

-- Popule esta tabela com até 8 dados;
INSERT INTO tb_estudantes (nome, idade, nota, matricula) VALUES 
("Fernanda", 10, 9.50, true),
("João", 11, 5.50, true),
("Maria", 9, 9.90, true),
("Paulinho", 9, 3, true),
("Joana", 11, 5, true),
("Marcelo", 12, 10, true),
("Paula", 10, 6.30, true),
("Luis", 9, 4, true);

SELECT * FROM tb_estudantes;

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
SELECT * FROM tb_estudantes WHERE nota > 7;

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
SELECT * FROM tb_estudantes WHERE nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_estudantes SET nota = 8 WHERE id = 5;
