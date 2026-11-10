use lista_aula11_schema;

insert into pessoa (nome, cidade, cpf, rg) values
('Arthur Barbosa', 'Poço Branco', '111.111.111-11', 2222),
('Anna Souza', 'Natal', '999.999.999-99', 1234),
('Davi Leite', 'Tibau do Sul', '222.222.222-22', 3333),
('Gabriela Souza', 'Nova Cruz', '333.333.333-33', 4444),
('Miguel Leite', 'Apodi', '000.000.000-00', 1111),
('Anna Souza', 'Nova Cruz', '888.888.888-88', 9999),
('Nicolas Alves', 'Currais Novos', '555.555.555-55', 6666),
('Eduardo Henrique', 'Parnamirim', '666.666.666-66', 7777),
('Anna Gabriela', 'Touros', '444.404.444-44', 1005),
('Davi Leite', 'Canguaretama', '202.202.202-22', 1003),
('Eduardo Luiz', 'Parnamirim', '666.606.666-66', 1007),
('João Paulo', 'Nova Cruz', '303.333.333-33', 1004),
('Leonardo Alves', 'Nísia Floresta', '010.010.010-11', 1001),
('Miguel Castro', 'Parelhas', '888.888.808-88', 1009),
('Nicolas Alves', 'Currais Novos', '555.505.555-55', 1006),
('Otávio Breno', 'Natal', '999.909.999-99', 1010),
('Thiago Lucas', 'Poço Branco', '101.101.101-00', 1002),
('Victor Hugo', 'Natal', '777.777.777-77', 1008),
('Médico Mastologia', 'Natal', '444.444.444-44', 5555),
('Victor Hugo', 'Natal', '777.777.707-77', 8888);

insert into medico (pessoa_id, especialidade) values
((select id from pessoa where cpf = '111.111.111-11'), 'Anestegiologia'),
((select id from pessoa where cpf = '999.999.999-99'), 'Cardiologia'),
((select id from pessoa where cpf = '222.222.222-22'), 'Cardiologia'),
((select id from pessoa where cpf = '777.777.777-77'), 'Cardiologia'),
((select id from pessoa where cpf = '333.333.333-33'), 'Demartologia'),
((select id from pessoa where cpf = '000.000.000-00'), 'Infectologia'),
((select id from pessoa where cpf = '444.444.444-44'), 'Mastelogia'),
((select id from pessoa where cpf = '888.888.888-88'), 'Neurologia'),
((select id from pessoa where cpf = '555.555.555-55'), 'Neurologia'),
((select id from pessoa where cpf = '666.666.666-66'), 'Oftalmologia');

insert into paciente (pessoa_id, doenca) values
((select id from pessoa where cpf = '444.404.444-44'), 'Pericardite'),
((select id from pessoa where cpf = '202.202.202-22'), 'Arritmia'),
((select id from pessoa where cpf = '666.606.666-66'), 'Conjutivite'),
((select id from pessoa where cpf = '303.333.333-33'), 'Doença de Chagas'),
((select id from pessoa where cpf = '010.010.010-11'), 'Epilepsia'),
((select id from pessoa where cpf = '888.888.808-88'), 'Catarata'),
((select id from pessoa where cpf = '555.505.555-55'), 'Espasmo das Pálpebras'),
((select id from pessoa where cpf = '999.909.999-99'), 'Acne'),
((select id from pessoa where cpf = '101.101.101-00'), 'Doença de Huntington'),
((select id from pessoa where cpf = '777.777.707-77'), 'Glaucoma');

insert into conta (numero, agencia, saldo, pessoa_id) values
(1239, 11100, 3987.99, (select id from pessoa where cpf = '111.111.111-11')),
(9999, 22200, 2900.29, (select id from pessoa where cpf = '222.222.222-22')),
(5559, 66600, 2040, (select id from pessoa where cpf = '666.666.666-66')),
(2229, 99900, 1872.99, (select id from pessoa where cpf = '999.999.999-99')),
(7779, 44400, 300.89, (select id from pessoa where cpf = '444.444.444-44')),
(1119, 12300, 200.99, (select id from pessoa where cpf = '000.000.000-00')),
(8889, 33300, 200.39, (select id from pessoa where cpf = '333.333.333-33')),
(4449, 77700, 50.43, (select id from pessoa where cpf = '777.777.777-77')),
(6669, 55500, -10.89, (select id from pessoa where cpf = '555.555.555-55')),
(3339, 88800, -150.99, (select id from pessoa where cpf = '888.888.888-88'));

insert into consulta (medico_id, paciente_id, data_hora) values
((select id from pessoa where cpf = '777.777.777-77'), (select id from pessoa where cpf = '555.505.555-55'), '2013-02-12 14:00:00'),
((select id from pessoa where cpf = '777.777.777-77'), (select id from pessoa where cpf = '444.404.444-44'), '2013-02-12 14:30:00'),
((select id from pessoa where cpf = '777.777.777-77'), (select id from pessoa where cpf = '777.777.707-77'), '2013-02-13 13:00:00'),
((select id from pessoa where cpf = '555.555.555-55'), (select id from pessoa where cpf = '101.101.101-00'), '2013-02-16 19:00:00'),
((select id from pessoa where cpf = '555.555.555-55'), (select id from pessoa where cpf = '010.010.010-11'), '2013-02-16 20:00:00'),
((select id from pessoa where cpf = '777.777.777-77'), (select id from pessoa where cpf = '666.606.666-66'), '2013-02-20 16:30:00'),
((select id from pessoa where cpf = '777.777.777-77'), (select id from pessoa where cpf = '888.888.808-88'), '2013-02-21 08:00:00'),
((select id from pessoa where cpf = '333.333.333-33'), (select id from pessoa where cpf = '999.909.999-99'), '2013-02-22 09:00:00'),
((select id from pessoa where cpf = '222.222.222-22'), (select id from pessoa where cpf = '202.202.202-22'), '2013-02-24 20:00:00'),
((select id from pessoa where cpf = '222.222.222-22'), (select id from pessoa where cpf = '303.333.333-33'), '2013-02-25 20:00:00');

select * from consulta;