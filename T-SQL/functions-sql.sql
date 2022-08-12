--retornar apenas os primeiros caracteres
select left(descricao, 4), descricao from categorias;

--retornar apenas os ultimos caracteres
select right(descricao, 4), descricao from categorias;

--retorna um intervalo de caracteres desejado
select substring(descricao, 3, 8), descricao from categorias;

--concatenar caracteres
-- select 'teste' + ' concatenacao'
-- select concat('teste',' de',' concatenacao')
select concat(descricao, ' teste') from categorias;

--caso um campo esteja null, retorna um texto padrao
select isnull(descricao, 'esta vazio') from categorias;

--coalesce => permite passar mais de 1 parametro para testar se é null
select coalesce(descricao,valor, total_horas,'esta vazio' ) from cursos;

--if/else
select iif(1 > 0, 'maior que zero','menor que zero');
select iif(len(descricao) > 8, 'maior','menor'), descricao from categorias;

--obter data/hora atual
select cast(getdate() as date)
select cast(getdate() as time)

--gerar GUID
select newid();