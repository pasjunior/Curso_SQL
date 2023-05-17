use SQL_DB_1;

-- FUNÇÕES DE TEXTE NO SQL SERVER

--Funções: SPACE, STRING_AGG E STUFF

--SPACE

select 'Paulo' + SPACE(25);
select 'Paulo' + SPACE(25) + 'x';

declare @vNome varchar(50);
	set @vNome = 'Paulo Junior'
select @vNome + SPACE(50 - len(@vNome));

select A.nome + space(60 - len(A.nome)) + A.sexo, len(nome + space(60 - len(A.nome)) + A.sexo)
from Alunos A

--STRING_AGG
--Concatena os valores das expressões de cadeia de caracteres e coloca os valores do separador entre eles.
--O separador não é adicionado ao final da cadeira de caracteres.
--OBS: Os valores Nulls não são exibidos

select STRING_AGG(convert(nvarchar(max), sexo), ' - ') as registro
from Alunos;

select STRING_AGG(convert(nvarchar(max), isnull(sexo, 'N')), ' - ') as registro
from Alunos

select datepart(year, data_nascimento) as ano,
		string_agg(convert(nvarchar(max), isnull(sexo, '0')), ' - ') as registro
from Alunos
group by datepart(year, data_nascimento)
order by 1;


--STUFF

select stuff('asdasdfghj',3,5,'12345');

declare @vProcura varchar(50);
declare	@vSubstit varchar(30);
	set @vProcura = 'EU, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, autorizo ...'
	set @vSubstit = 'Paulo Junior';

select STUFF(@vProcura,5,30,@vSubstit + SPACE(30 - len(@vSubstit)));
select STUFF(@vProcura,5,30,trim(@vSubstit + SPACE(30 - len(@vSubstit)))) as termo;