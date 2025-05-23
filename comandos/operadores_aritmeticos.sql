-- PARA QUE SERVE ##################################################################
-- Servem para executar operações matemáticas
-- Muito utilizados para criar colunas calculadas


-- TIPOS ###########################################################################
-- +
-- -
-- *
-- /
-- ^
-- %
-- || --> não é um operador aritmético


-- EXEMPLOS ########################################################################

-- (Exemplo 1) Criação de coluna calculada
-- Crie uma coluna contendo a idade do cliente da tabela sales.customers

select *
from sales.customers
limit 10

select
	email,
	birth_date,
	(current_date - birth_date) / 365 as idade_cliente
from sales.customers


-- (Exemplo 2) Utilização da coluna calculada nas queries
-- Liste os 10 clientes mais novos da tabela customers

select *
from sales.customers
limit 10

select
	email,
	birth_date,
	(current_date - birth_date) / 365 as idade_cliente
from sales.customers
order by idade_cliente 
limit 10


-- (Exemplo 3) Criação de coluna calculada com strings 
-- Crie a coluna "nome_completo" contendo o nome completo do cliente

select *
from sales.customers
limit 10

select 
	first_name || ' ' || last_name as nome_completo
from sales.customers


-- RESUMO ##########################################################################
-- (1) Servem para executar operações matemáticas
-- (2) Muito utilizado para criar colunas calculadas
-- (3) Alias (pseudônimos) são muito utilizados para dar nome as colunas calculadas.
-- (4) Para criar pseudônimos que contém espaços no nome são utilizadas aspas duplas
-- (5) No caso de strings o operador de adição (||) irá concatenar as strings
-- (6) Utilize o Guia de comandos para consultar os operadores utilizados no SQL
