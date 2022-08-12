/* inner join une informacoes de 2 tabelas, so ira retornar 
 o dado caso as 2 tabelas possuam os dados correspondente */

select cr.descricao Categoria, ca.descricao Cursos from cursos cr
inner join categorias ca
on
ca.id = cr.categoria_id;