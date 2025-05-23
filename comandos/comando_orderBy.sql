-- PARA QUE SERVE O COMANDO ORDER BY
-- Serve para ordenar a seleção de acordo com uma regra definida pelo usuário

-- SINTAXE
select coluna_1, coluna_2, coluna_3
from schema_1.tabela_1
where condição_x = true
order by couluna_1

-- (Exemplo 1) Ordenação de valores numéricos
-- Liste produtos da tabela products na ordem crescente com base no preço 
select *
from sales.products
order by price desc -- odem padrão é crescente e para decrescente utilizamos o comando DESC

-- (Exemplo 2) Ordenação de texto
-- Liste os resultados distintos da tabela customers na orderm crescente
select distinct state
from sales.customers
order by state