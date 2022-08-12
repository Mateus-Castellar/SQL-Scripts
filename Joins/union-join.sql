/*
Union mergea os registros de varias tabelas distinatas

union => remove duplicidade de registros casa exista
union all => retorna os registros com mesmo dado
*/


select descricao from cursos where id = 1
union
select descricao from categorias where id = 2
union
select 'valor dinamico'
union
select 'valor dinamico'
union
select 'valor dinamico'

select descricao from cursos where id = 1
union all
select descricao from categorias where id = 2
union all
select 'valor dinamico'
union all
select 'valor dinamico'
union all
select 'valor dinamico'