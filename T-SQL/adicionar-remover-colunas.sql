--adicionar campo em tabela existente
select * from categorias;
alter table categorias
add 
teste varchar(100) default 'teste',
Atualizado bit default 0;

--remover campo tabela existente
alter table categorias drop constraint DF__categoria__teste__07C12930;
alter table categorias drop column teste2;