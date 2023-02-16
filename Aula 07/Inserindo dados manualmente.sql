use SQL_DB_1;

-- Apagando colunas

alter table Turmas
drop column fk_alunos;

alter table Turmas
drop column id_aluno;

alter table Turmas
drop column Valor_Turma;

alter table Turmas
drop column desconto;

create table AlunosxTurmas
(
	id_turma int not null,
	id_aluno int not null,
	valor numeric(13,2) not null,
	valor_desconto numeric(3,2),
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

alter table AlunosxTurmas
	add constraint fk_turma foreign key (id_turma) references Turmas(id_turma);

alter table AlunosxTurmas
	add constraint fk_aluno foreign key (id_aluno) references Alunos(id_aluno);

-- Inserindo Turmas

select * from Cursos;

insert into Turmas
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values
(1, 1, '17/11/2019', '27/12/2019', GETDATE(), 'pasjr')

insert into AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values
(1, 10, 1200, 0.1, GETDATE(), 'pasjr')

-- Inserindo Cursos

select * from Cursos;

insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(2, 'VBA II', '15/02/2023 00:00.000', 'pasjr');

insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(3, 'VBA III', '15/02/2023 00:00.000', 'pasjr'),
(4, 'Excel Básico', '15/02/2023 00:00.000', 'pasjr'),
(5, 'Excel Intermediário', '15/02/2023 00:00.000', 'pasjr'),
(6, 'Excel Avançado', '15/02/2023 00:00.000', 'pasjr'),
(7, 'Pacote Office Completo', '15/02/2023 00:00.000', 'pasjr'),
(8, 'Word', '15/02/2023 00:00.000', 'pasjr'),
(9, 'PowerPoint', '15/02/2023 00:00.000', 'pasjr'),
(10, 'Access', '15/02/2023 00:00.000', 'pasjr'),
(11, 'Word Avançado', '15/02/2023 00:00.000', 'pasjr');
