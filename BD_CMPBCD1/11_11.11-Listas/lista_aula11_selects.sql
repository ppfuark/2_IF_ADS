use lista_aula11_schema;

select 
	p.id as 'ID',
    p.nome as 'Nome', 
    p.cidade as 'Cidade',
    p.cpf as 'CPF', 
    p.rg as 'RG', 
    m.especialidade as 'Especialidade'
from medico m
join pessoa p on p.id = m.pessoa_id
order by m.especialidade asc, p.nome asc;

select 
	p.id as 'ID', 
    p.nome as 'Nome',
    p.cidade as 'Cidade', 
    p.cpf as 'CPF', 
    p.rg as 'RG', 
    pc.doenca as 'Doença'
from pessoa p
join paciente pc on p.id = pc.pessoa_id
order by p.nome asc;

select
	c.data_hora as 'Data e Hora', 
    m.especialidade as 'Especialidade', 
    pm.nome as 'Médico', 
    p.doenca as 'Doença',
    pp.nome as 'Paciente'
from consulta c
join medico m on m.pessoa_id = c.medico_id
join pessoa pm on pm.id = m.pessoa_id
join paciente p on p.pessoa_id = c.paciente_id
join pessoa pp on pp.id = p.pessoa_id
order by c.data_hora asc;

select 
	c.id as 'ID',
    c.numero as 'Número', 
    c.agencia as 'Agência',
    c.saldo as 'Saldo',
    p.nome as 'Titular'
from conta c
join pessoa p on p.id = c.pessoa_id
order by saldo desc;