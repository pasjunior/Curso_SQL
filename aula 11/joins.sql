USE SQL_DB_1;

-- Total de Turmas por curso

select c.id_curso, c.nome_curso, COUNT(t.id_turma) total_turmas
	from Turmas t
	inner join Cursos c on c.id_curso = t.id_curso
	group by c.id_curso, c.nome_curso

-- Todos os cursos, independentemente se existe ou não turmas

select c.nome_curso, count(t.id_turma) total_turmas
	from Turmas t
	right join Cursos c on t.id_curso = c.id_curso
	group by t.id_curso, c.nome_curso

-- Lista completa de alunos

select a.nome, a.sexo, c.nome_curso, t.data_inicio, t.data_termino,
		at.valor valor_bruto, at.valor_desconto, FLOOR(valor * valor_desconto) valor_desconto, 
		FLOOR(valor - (valor * valor_desconto)) valor_liquido
	from AlunosxTurmas at
	inner join Turmas t on t.id_turma = at.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
	inner join Alunos a on a.id_aluno = at.id_aluno

-- Quantidade de Turmas com alunos

select c.nome_curso, t.id_turma, count(at.id_aluno) total_alunos 
	from Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma