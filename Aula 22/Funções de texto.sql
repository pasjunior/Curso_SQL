use SQL_DB_1;

--FUNÇÕES DE TEXTO NO SQL SERVER
--Aula 22

--Funções: SUBSTRING, TRANSLATE, UPPER, TRIM
--Extras: CASE, IIF, WHILE, REPLACE

--SUBSTRING
select A.nome,
	substring(A.nome,1,1) + substring(a.nome,charindex(' ', A.nome)+1,1) + substring(a.nome,charindex(' ', A.nome,charindex(' ', A.nome)+1)+1,1)
from Alunos A


--IIF
select a.nome,
	iif(substring(a.nome,1, charindex(' ', a.nome, charindex(' ', a.nome) +1)) = '',
		a.nome,
		substring(a.nome,1, charindex(' ', a.nome, charindex(' ', a.nome) +1)))
from Alunos a

--TRANSLATE
select TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()');

select a.nome, REPLACE(a.nome,'A', '11111') as nome2
from Alunos a
