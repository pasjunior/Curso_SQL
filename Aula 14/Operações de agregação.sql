use SQL_DB_1;

-- Operações de agregação

-- Ganho com turmas

select
	c.nome_curso,
	t.id_turma,
	sum(at.valor) as valor_Bruto,
	sum(at.valor * at.valor_desconto) as total_desconto, 
	sum(at.valor - (at.valor * at.valor_desconto)) as valor_liquido 
from Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by c.nome_curso, t.id_turma

-- Ganhos por ano

select
	YEAR(t.data_inicio) as ano,
	sum(at.valor) as valor_Bruto,
	sum(at.valor * at.valor_desconto) as total_desconto, 
	sum(at.valor - (at.valor * at.valor_desconto)) as valor_liquido 
from Turmas t
	inner join AlunosxTurmas at on at.id_turma = t.id_turma
	inner join Cursos c on c.id_curso = t.id_curso
group by YEAR(t.data_inicio)

