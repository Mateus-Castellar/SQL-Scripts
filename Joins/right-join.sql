/*
com left join o banco dara prioridade a instrucao da esquerda, no
exemplo a baixo dara prioridade para 'categoria'
*/

select cr.descricao Curso, ca.descricao Categoria 
from cursos cr
right join categorias ca
on
ca.id = cr.categoria_id;