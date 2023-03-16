

-- Funções de data:

-- datetime armazena até centésimos de segundos
-- smalldatetime armazena até segundos

-- Funções: getdate, datepart, dateadd e datediff

use SQL_DB_1;

--gettdate()
select GETDATE();

-- pesquisar parâmetros na tabela ANSI
select convert(char, getdate(), 103); -- formato dd/mm/yyyy
select convert(char, getdate(), 102); -- formato dd.mm.yyyy
select convert(char, getdate(), 1); -- formato mm.dd.yyyy
select convert(char, data_nascimento, 103) data_convertida from Alunos;

select day(getdate()) dia;
select month(getdate()) mês;
select year(getdate()) ano;

--datepart
select datepart(day, getdate());
select datepart(month, getdate());
select datepart(year, getdate());

select * from Alunos;
select distinct datepart(year, data_nascimento) ano from Alunos order by 1;

--dateadd
select dateadd(year, -2, getdate());
select dateadd(year, 5, data_nascimento) nova_data from Alunos;

--dadiff
select DATEDIFF(year, data_nascimento, GETDATE()) from Alunos;
select datepart(year, data_nascimento) from Alunos;
select datepart(year, GETDATE()) from Alunos;