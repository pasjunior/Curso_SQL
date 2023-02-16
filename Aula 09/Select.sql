use SQL_DB_1;

-- Inserindo dados em Turmas

insert into Turmas
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values
(2, 1, '01/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(3, 1, '02/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(4, 4, '03/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(5, 4, '04/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(6, 11, '05/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(7, 11, '06/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(8, 9, '07/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(9, 6, '08/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(10, 6, '09/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(11, 6, '10/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(12, 6, '11/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(13, 6, '12/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(14, 5, '13/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(15, 5, '14/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(16, 5, '15/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr'),
(17, 5, '16/01/2020 00:00:00.000', GETDATE(), GETDATE(), 'pasjr');

insert into AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values
(6, 12, 1100, 0.0, GETDATE(), 'pasjr'),
(6, 47, 1100, 0.0, GETDATE(), 'pasjr'),
(6, 30, 1100, 0.0, GETDATE(), 'pasjr'),
(6, 65, 1100, 0.0, GETDATE(), 'pasjr'),
(6, 76, 1100, 0.0, GETDATE(), 'pasjr'),
(6, 27, 550, 0.5, GETDATE(), 'pasjr'),
(6, 2, 550, 0.5, GETDATE(), 'pasjr'),
(6, 80, 700, 0.3636, GETDATE(), 'pasjr'),
(6, 55, 1100, 0.0, GETDATE(), 'pasjr'),
(10, 237, 125, 0.0, GETDATE(), 'pasjr'),
(10, 350, 125, 0.0, GETDATE(), 'pasjr'),
(10, 426, 100, 0.2, GETDATE(), 'pasjr'),
(10, 194, 100, 0.2, GETDATE(), 'pasjr'),
(10, 436, 100, 0.2, GETDATE(), 'pasjr'),
(10, 155, 100, 0.2, GETDATE(), 'pasjr'),
(10, 159, 100, 0.2, GETDATE(), 'pasjr'),
(10, 397, 75, 0.4, GETDATE(), 'pasjr'),
(10, 151, 115, 0.08, GETDATE(), 'pasjr'),
(10, 153, 115, 0.08, GETDATE(), 'pasjr'),
(10, 282, 75, 0.4, GETDATE(), 'pasjr'),
(10, 232, 70, 0.44, GETDATE(), 'pasjr'),
(10, 223, 70, 0.44, GETDATE(), 'pasjr'),
(10, 223, 60, 0.52, GETDATE(), 'pasjr'),
(10, 229, 125, 0.0, GETDATE(), 'pasjr');

-- selecionando as tabelas

select * from AlunosxTurmas;

select * from Cursos;

-- selecionando alguns campos

select id_turma, id_turma, login_cadastro from turmas;

select id_turma, id_turma, login_cadastro from turmas where id_turma = 2;

-- Utilizando Alias para tabelas

select T.id_turma, T.login_cadastro from Turmas T;

-- Utilizando Alias para os campos

select T.id_curso IDC, T.id_Turma IDT, T.data_inicio 'Data Começo' from Turmas T;