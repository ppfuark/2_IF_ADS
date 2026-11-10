use lista_aula11_schema;
set sql_safe_updates = 0;

update pessoa set nome = 'Pedro Bial'
where cpf = '444.444.444-44';

update pessoa set nome = 'Silvio Santos', cidade = 'Apodi'
where rg = 1001;

update conta set saldo = 0
where numero = 9999 and agencia = 22200;

update consulta set medico_id = (select id from pessoa where cpf = '010.010.010-11')
where medico_id = (select id from pessoa where cpf = '888.888.888-88');

update conta set saldo = saldo + 200
where saldo < 0;

insert into consulta (medico_id,  paciente_id, data_hora) values
((select id from pessoa where rg = 1234),
(select id from pessoa where rg = 1004),
 '2013-02-08 07:00:00');

update conta set saldo = saldo / 2
where saldo > 999;

delete from paciente where pessoa_id = (select id from pessoa where rg = 1008);

delete from consulta
where (data_hora >= '2013-02-16 00:00:00' and data_hora < '2013-02-22 00:00:00');

delete from consulta 
where paciente_id = (select id from pessoa where cpf = '303.333.333-33');