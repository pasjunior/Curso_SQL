insert into dbo.Alunos
(id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
values
(2, 'Alessando Henriques Peres Porfirio', '04/09/1989', 'M', '02/11/2019 15:00:00', 'ALESS');

insert into dbo.Cursos (id_curso, nome_curso, data_cadastro, login_cadastro) values
(1, 'VBA I','02/11/2019 15:00:00','ALESS')

insert into Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(2, 'Ausente Sem Justificativa', '02/11/2019 15:00:00', 'ALESS')

insert into Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(3, 'Ausente Com Justificativa', '02/11/2019 15:00:00', 'ALESS')

select * from Cursos;

insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(1, 'VBA I', '08/02/2023 21:21:00', 'PASJR')