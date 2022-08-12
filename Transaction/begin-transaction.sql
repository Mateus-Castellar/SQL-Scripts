/*
O principal objetivo da transaction é garantir a integridade dos dados,
principalmente a realizar processamentos em mais de 1 tabelas
(ou persiste tudo ou não persiste nada)! 
*/

select * from categorias

begin transaction
update categorias
set descricao = upper(descricao)
where id > 0
go
delete categorias
where id = 4
go

commit -- => salva as alteracoes

rollback --retorna o estado anterior apos executar as mudancas(caso nao tenha sido commitado)