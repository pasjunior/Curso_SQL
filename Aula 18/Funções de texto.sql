use sql_db_1;

--Funções de Texto

--Funções: format, left, right, len, lower, upper

-- FORMAT
/*
select CONVERT(char, getdate(), 103);

declare @dt datetime = getdate();

select format(@dt, 'd', 'en-UD') as Americano,
	   format(@dt, 'd', 'zh-cn') as Chines,
	   format(@dt, 'd', 'de-de') as Alemao;
*/

declare @dt datetime = getdate();

select FORMAT(at.valor, 'N', 'en-us') Formato_Americano,
	   FORMAT(at.valor, 'G', 'en-us') Formato_Geral,
	   FORMAT(at.valor, 'C', 'pt-br') Formato_Monetario_BR,
	   FORMAT(at.valor, 'C', 'en-us') Formato_Monetario_US,
	   FORMAT(at.valor, 'C', 'de-de') Formato_Monetario_AL,
	   FORMAT(at.valor, 'C', 'de-at') Formato_Monetario_AUS
	from AlunosxTurmas at

-- LEFT

select left('Paulo Alves', 7);

select left(a.nome, 5)
	from Alunos a;

	
-- RIGHT

select right(a.nome, 5)
	from Alunos a;

-- LEN

select len(a.nome)
	from Alunos a;

-- LOWER

select lower(a.nome)
	from Alunos a;

-- UPPER

select upper(a.nome)
	from Alunos a;