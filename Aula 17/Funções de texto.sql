use SQL_DB_1;

-- Funções de texto

-- Funções: ASCII, NCHAR, CHAR, CHARINDEX, CONCAT, CONCAT_WS, DIFFERENCE

--ASCII
select ascii('a');
select ascii('A');
select ascii('9');
select ascii('Paulo');

--NCHAR
select nchar('97');
select nchar('77');
select nchar('90');
select nchar('80');

--CHAR (converte um código ASCII do tipo int em um valor de caracter)
select char(65);
select char(97);

--CHARINDEX (pesquisa um caractere em uma sequência de até 8.000 caracteres)
select charindex('a', 'Paulo');
select charindex('a', 'Paulo', 4);
select charindex('souto', 'Paulo Alves de Souto Junior');

select a.nome, CHARINDEX('peres', a.nome)
from Alunos a
where convert(int, CHARINDEX('peres', a.nome)) > 0;

--CONCAT
select CONCAT('Paulo', '-', 'Júnior');
select 'Paulo' + '-' + 'Júnior';

select concat(a.nome, ' - ', c.nome_curso)
from Alunos a
	inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
	inner join Turmas t on t.id_turma = at.id_turma
	inner join Cursos c on c.id_curso = t.id_curso;

--CONCAT_WS
select CONCAT_WS('-', 'Paulo', 'Alves', 'de', 'Souto', 'Junior');

select concat_ws(' - ', a.nome, c.nome_curso,
				'Início: ', trim(CONVERT(char, t.data_inicio)),
				'Término: ', trim(CONVERT(char, t.data_termino)))
from Alunos a
	inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
	inner join Turmas t on t.id_turma = at.id_turma
	inner join Cursos c on c.id_curso = t.id_curso;

--DIFFERENCE (escala de 0 a 4)
select DIFFERENCE('Alessandro', 'Alexsandro');
select DIFFERENCE('Alessandro', 'Alex');
select DIFFERENCE('Alessandro', 'Sandro');
select DIFFERENCE('Alessandro', 'Paulo');