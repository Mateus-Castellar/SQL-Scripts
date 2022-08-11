--Criar Base de dados
create database CursoSql; 

--Evita erro de base sendo utilizada ao tentar dropar
alter database CursoSql set single_user with rollback immediate;

--dropar Base de dados
drop database CursoSql

--inserir tabela e campos em uma base de dados
use CursoSql;
create table alunos
(
    id int primary key identity,
    nome varchar(80) not null,
    cpf char(11) not null,
    data_nascimento date,
    ativo bit default 1, --por padrão persiste como true

)

--inserir dado em uma tabela
insert into alunos(nome, cpf, data_nascimento, ativo)
values
    ('Mateus Castellar1','12345678911', getdate(), 1),
    ('Mateus Castellar2','12345678912', getdate(), 0),
    ('Mateus Castellar3','12345678913', getdate(), 1);

--atualizar dado de uma tabela
update alunos
set cpf = '99999999966'
where id = 1;

--deletar dado de uma tabela
--delete top (15) from alunos => deleta um certo numero de registros
--truncate table alunos => indicado para limpar todos os registros da tabela
delete from alunos
WHERE id = 5; 

--consultar registros da tabela
select nome as Aluno, cpf as Documento --Alias para personalizar nome dos campos 
from alunos
where nome = 'Mateus Castellar'