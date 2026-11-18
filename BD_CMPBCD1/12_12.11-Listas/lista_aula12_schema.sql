DROP SCHEMA IF EXISTS lista_aula12;
CREATE SCHEMA lista_aula12;

USE lista_aula12;

CREATE TABLE ambulatorio (
	id INT PRIMARY KEY AUTO_INCREMENT,
	numero INT NOT NULL UNIQUE,
	andar INT NOT NULL,
	capacidade INT NOT NULL
);

CREATE TABLE medico (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	rg INT NOT NULL UNIQUE,
	idade INT NOT NULL,
	salario DECIMAL(7, 2) NOT NULL,
	especialidade VARCHAR(50) NOT NULL,
	data_contrato DATE,
	ambulatorio_id INT,
	FOREIGN KEY(ambulatorio_id) REFERENCES ambulatorio(id)
);

INSERT INTO medico (nome, rg, idade, salario, especialidade) VALUES
	('Natasha', 12200, 41, 12000, 'Cardiologia'),
	('Otávio', 12300, 23, 1400, 'Oftalmologia'),
	('Pedro', 12347, 22, 1150, 'Ortopedia');

INSERT INTO ambulatorio (numero, andar, capacidade) VALUES (101, 1, 15);
INSERT INTO medico (nome, rg, idade, salario, especialidade, data_contrato, ambulatorio_id) VALUES
	('Paulo', 1200, 42, 10000, 'Cardiologia', '2012-01-31', LAST_INSERT_ID()),
	('Anna', 3234, 24, 12000, 'Cardiologia', '2012-01-17', LAST_INSERT_ID()),
	('Arthur', 32234, 22, 8000, 'Ortopedia', '2012-12-15', LAST_INSERT_ID());

INSERT INTO ambulatorio (numero, andar, capacidade) VALUES (201, 2, 20);
INSERT INTO medico (nome, rg, idade, salario, especialidade, data_contrato, ambulatorio_id) VALUES
	('Felipe', 12122, 25, 19800, 'Dermatologia', '2012-12-31', LAST_INSERT_ID()),
	('Gustavo', 51421, 45, 1400, 'Oftalmologia', '2012-05-05', LAST_INSERT_ID());

INSERT INTO ambulatorio (numero, andar, capacidade) VALUES (202, 2, 30);
INSERT INTO medico (nome, rg, idade, salario, especialidade, data_contrato, ambulatorio_id) VALUES
	('Alan', 12034, 38, 19700, 'Neurologia', '2012-07-29', LAST_INSERT_ID()),
	('Henrique', 32034, 39, 18000, 'Mastologia', '2012-09-10', LAST_INSERT_ID()),
	('Daniela', 32340, 28, 8500, 'Ortopedia', '2012-09-11', LAST_INSERT_ID());

INSERT INTO ambulatorio (numero, andar, capacidade) VALUES (301, 3, 10);

SELECT m.nome, m.salario, a.numero AS numero_ambulatorio
FROM medico m
INNER JOIN ambulatorio a ON m.ambulatorio_id = a.id
WHERE a.andar = 2;

SELECT SUM(m.salario) AS soma_salarios
FROM medico m
INNER JOIN ambulatorio a ON m.ambulatorio_id = a.id
WHERE a.andar = 1;

SELECT m.nome, a.numero AS ambulatorio, m.data_contrato
FROM medico m
INNER JOIN ambulatorio a ON m.ambulatorio_id = a.id;

SELECT a.numero AS numero_ambulatorio, COUNT(m.id) AS quantidade_medicos
FROM ambulatorio a
LEFT JOIN medico m ON m.ambulatorio_id = a.id
GROUP BY a.id, a.numero;

SELECT 
    m.nome AS 'Nome',
    m.especialidade AS 'Especialidade',
    a.numero AS 'Ambulatório',
    a.andar AS 'Andar'
FROM medico m
INNER JOIN ambulatorio a ON m.ambulatorio_id = a.id
ORDER BY a.numero, m.nome;