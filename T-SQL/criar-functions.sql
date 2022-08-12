-- create function MascararCampo(@data varchar(255), @quantidadeCaracteres int)
-- returns varchar(255)
-- as
-- begin
--     return left(@data, @quantidadeCaracteres) + '********'
-- end

-- select dbo.mascararCampo('Mateus Castellar',4) Nome_Mascarado;

-- create function ContarRegistrosCategorias()
-- returns int
-- as
-- begin
--     return (select count(*) from categorias)
-- end

-- select dbo.ContarRegistrosCategorias()

create function ObterCategoriaById(@id int)
returns table
as
    return (select * from categorias where id = @id)

select * from dbo.GetCategoriaById(2)