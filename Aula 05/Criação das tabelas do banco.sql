CREATE TABLE Alunos
(
	id_aluno INT PRIMARY KEY NOT NULL,
	nome varchar(200) NOT NULL,
	data_nascimento date NOT NULL,
	sexo varchar(1) NOT NULL, -- M para Masculino ou F para Feminino
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(5) NOT NULL
);

alter table Alunos
	add constraint fk_Turmas foreign key (id_aluno) references Turmas (id_aluno);

CREATE TABLE Situacao
(
	id_situacao INT PRIMARY KEY NOT NULL,
	situacao varchar(25) not null,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

create table Cursos
(
	id_curso int PRIMARY KEY not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null,
);

create table Turmas
(
	id_turma int PRIMARY KEY not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

alter table Turmas
	add constraint fk_Alunos foreign key (id_aluno) references Alunos (id_aluno);

alter table Turmas
	add constraint fk_Cursos foreign key (id_curso) references Cursos (id_curso);


create table Regristro_Presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

alter table Regristro_Presenca
	add constraint fk_TurmasRP foreign key (id_turma) references Turmas (id_turma);

alter table Regristro_Presenca
	add constraint fk_AlunosRP foreign key (id_aluno) references Alunos (id_aluno);

alter table Regristro_Presenca
	add constraint fk_SituacaoRP foreign key (id_situacao) references Situacao (id_situacao);
