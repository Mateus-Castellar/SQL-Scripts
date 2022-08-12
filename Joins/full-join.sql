/*
full join, caso nao encontre o valor relaciondo preenchera como null
e retorna todos os registros
*/

select cr.descricao Curso, ca.descricao Categoria 
from cursos cr
full join categorias ca
on
ca.id = (cr.categoria_id + 4);