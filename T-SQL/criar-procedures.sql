-- create procedure PesquisarCategoriaPorId(@id int)
-- as
-- begin
--     select * from categorias where id = @id
-- end

-- execute dbo.PesquisarCategoriaPorId 1

create procedure PersistirDadosEmCategorias(@descricao varchar(255))
as
begin
    if(@descricao is null)
    begin
        raiserror('descricao nao é valida', 16, 1)
        return
    end

    insert into categorias(descricao, data_cadastro)
    values (@descricao, getdate())
end

execute dbo.PersistirDadosEmCategorias @descricao='Categoria procedure'
select * from categorias
