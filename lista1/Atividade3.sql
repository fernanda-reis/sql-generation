CREATE DATABASE db_escola;

USE db_escola;
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idade INT,
	nota DECIMAL(10,2),
	matricula BOOLEAN,
	PRIMARY KEY (id) 
);

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
SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 8 WHERE id = 5;
