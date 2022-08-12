--renomear nome de uma coluna
select * from categorias
execute sp_rename 'dbo.categorias.teste', 'update', 'column'


create table tabelaTeste(id int);

--renomear nome de uma tabela
select * from categorias
execute sp_rename 'dbo.tabelaTeste', 'TabelaAlterada'