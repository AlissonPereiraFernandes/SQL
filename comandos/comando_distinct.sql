-- PARA QUE SERVE O COMANDO DISTINCT
-- Serve para remover linhas duplicadas e mostrar apenas linhas distintas
-- Muito usado na etapa de exploração das bases

-- SINTAXE
select distinct coluna_1, coluna_2, coluna_3
from schema_1.tabela_1

-- (Exemplo 1) Seleção de uma coluna sem DISTINCT
-- Liste as marcas de carro que constam na tabela products

select brand 
from sales.products -- 333

-- (Exemplo 2) Seleção de uma coluna com DISTINCT
-- Liste as marcas de carro distintas que constam na tabela product 

select distinct brand
from sales.products

-- (Exemplo 3) Seleção de mais de uma coluna com DISTINCT
-- Liste as marcas e anos de modelo distintos que constam na tabela product

select distinct brand, model_year
from sales.products