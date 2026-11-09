
drop database if exists lista_aula11_schema;
create database lista_aula11_schema;
use lista_aula11_schema;

create table pessoa (
	id int(11) not null auto_increment,
    nome varchar(100) not null,
    cidade varchar(100) not null,
    cpf char(14) not null,
    rg int(11) not null,
    primary key (id),
    unique index cpf (cpf),
    unique index rg (rg),
    index idx_nome (nome)
);	

create table medico(
	pessoa_id int(11) not null,
    especialidade varchar(50) not null,
    primary key (pessoa_id),
    constraint fk_medico_pessoa
		foreign key (pessoa_id) references pessoa (id)
        on update cascade
        on delete restrict
);

create table paciente(
	pessoa_id int(11) not null,
    doenca varchar(50),
    primary key (pessoa_id),
    constraint fk_paciente_pessoa
		foreign key (pessoa_id) references pessoa(id)
        on update cascade
        on delete restrict
);

create table conta (
	id int(11) not null auto_increment,
    numero int(11) not null,
    agencia int(11) not null, 
    saldo float not null,
    pessoa_id int(11) not null,
    primary key (id),
    unique index idx_numero_agencia (numero, agencia),
    index pessoa_id(pessoa_id),
    constraint fk_pessoa_conta
		foreign key (pessoa_id) references pessoa (id)
        on update cascade
        on delete restrict 
);

create table consulta(
	medico_id int(11) not null, 
    paciente_id int(11) not null, 
    data_hora datetime not null,
    primary key (medico_id, paciente_id, data_hora),
    unique index idx_medico_data_hora(medico_id, data_hora),
    unique index idx_paciente_data_hora(paciente_id, data_hora),
    constraint fk_consulta_medico
		foreign key (medico_id) references medico (pessoa_id)
        on update cascade
        on delete restrict,
	constraint fk_consulta_paciente
		foreign key (paciente_id) references paciente (pessoa_id)
        on update cascade
        on delete restrict
);

select * from pessoa;
select * from medico;
select * from paciente;
select * from consulta;