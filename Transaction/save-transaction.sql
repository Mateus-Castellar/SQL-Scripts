/*
save transaction => podemos criar um checkpoint para tomar como referencia, caso algo
de errado podemos dar rolback e salvar apenas as alteracoes ques estao salvas no checkpoint
*/

insert into categorias(descricao, data_cadastro)
values
    ('categoria nova 1', getdate()),
    ('categoria nova 2', getdate())

save transaction AtaulizacaoPoint

update categorias 
set descricao = 'Aplicacao Web'
where descricao = 'Web'

rollback transaction AtaulizacaoPoint
commit