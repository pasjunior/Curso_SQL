-- Selects diversos com função de agregação

use SQL_DB_1;

-- Total de turmas por cursos

select c.id_curso, c.nome_curso, count(*) as total_turma
from Turmas t
	inner join Cursos c on c.id_curso = t.id_curso
group by c.id_curso, c.nome_curso;

-- Tirar a prova da quantidade de turmas por curso
select *
from Turmas t
where t.id_curso = 6;

-- Utilizando cláusula IN
select *
from Turmas
where id_curso in (1, 5);

select *
from Turmas
where id_curso not in (1, 5);

-- Ano de nascimento dos alunos;
select distinct datepart(year, data_nascimento) as ANO
from Alunos
order by 1 asc

select distinct datepart(year, data_nascimento) as ANO
from Alunos
order by 1 desc

-- Lista completa dos alunos
select 
	c.nome_curso,
	c.id_curso,
	at.valor, 
	at.valor_desconto, 
	t.data_inicio, 
	t.data_termino, 
	a.nome, 
	a.sexo
from AlunosxTurmas at
	inner join Turmas t on t.id_turma = at.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
	inner join Alunos a on a.id_aluno = at.id_aluno
where a.sexo = 'M'
order by 1