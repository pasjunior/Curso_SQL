use SQL_DB_1;
--Funções de texto

--Funções: LTRIM, RTRIM, PATINDEX, REPLACE, REPLICATE E REVERSE

-- LTRIM

select LTRIM('    Paulo Junior');

-- RTRIM

select LTRIM('Paulo Junior    ');

-- PANTIDEX

select patindex('%lo%', 'Paulo Junior');
select patindex('P%', 'Paulo Junior');
select patindex('%r', 'Paulo Junior');

-- SUBSTRING

select SUBSTRING(a.nome, PATINDEX('%al%', a.nome), 4)
	from Alunos as a;

	select nome from Alunos;

-- REPLACE

select replace(a.nome, 'a', 'A')
	from Alunos a;

-- REPLICATE

select replicate(a.nome, 3)
	from Alunos a;

select a.nome + REPLICATE('-', 50 - LEN(a.nome))
	from Alunos a

-- REVERSE

select REVERSE(a.nome)
	from Alunos a;