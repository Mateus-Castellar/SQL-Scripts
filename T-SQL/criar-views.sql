/*
View => trata-se de uma 'tabela virtual', podendo abstrair
as consultas complexas, deixando o codigo mais limpo
*/

 create view vwCursos
 as
 select c.descricao, ca.descricao categoria from cursos c
 inner join categorias ca
 on
 c.categoria_id = ca.id
 go

 select * from vwCursos;
--  drop view vwCursos