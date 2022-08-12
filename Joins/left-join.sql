/*
com left join o banco dara prioridade a instrucao da esquerda, no
exemplo a baixo dara prioridade para 'categoria'
*/

insert into categorias(descricao)
values ('Categoria teste')

select cr.descricao Categoria, ca.descricao Curso 
from categorias cr
left join cursos ca
on
ca.categoria_id = cr.Id;