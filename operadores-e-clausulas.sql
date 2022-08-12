create table alunos
(
    id int primary key identity,
    nome varchar(80) not null,
    cpf char(11) not null,
    cidade varchar(60) not null,
    estado char(2) not null,
    data_nascimento date,
    ativo bit default 1
)

create table categorias
(
    id int primary key identity,
    descricao varchar(80) not null,
    data_cadastro datetime default getdate()
)

create table cursos
(
    id int primary key identity,
    categoria_id int not null,
    descricao varchar(80) not null,
    total_horas int not null,
    valor decimal(12,2) not null default 0,
    data_cadastro datetime default getdate(),
    ativo bit default 1,
    constraint fk_categoria_id foreign key (categoria_id) references categorias(id)
)

create table alunos_cursos
(
    aluno_id int not null,
    curso_id int not null,
    data_cadastro datetime default getdate(),
    constraint pk_alunos_cursos primary key(aluno_id, curso_id),--chave primaria com 2 campos
    constraint fk_aluno_id foreign key(aluno_id) references alunos(id),
    constraint fk_curso_id foreign key(curso_id) references cursos(id)
)

insert into alunos(nome,cpf,cidade,estado, data_nascimento)
values
    ('Mateus', '00000000001','São Paulo', 'SP', '2003-01-01'),
    ('Marcos', '00000000011','São Paulo', 'SP', '2003-08-08'),
    ('Eduardo', '00000000002','Rio De Janeiro', 'RJ', '2003-02-02'),
    ('Carla', '00000000022','Rio De Janeiro', 'RJ', '2004-02-02'),
    ('Carlos', '00000000003','Bauru', 'SP', '2003-04-04'),
    ('Julia', '00000000004','Belo Horizonte', 'MG', '2003-05-05'),
    ('Felipe', '00000000044','Belo Horizonte', 'MG', '2003-05-15'),
    ('Maria', '00000000005','Salvador', 'BA', '2003-06-06')

insert into categorias(descricao)
values
    ('acesso a dados'),
    ('seguranca'),
    ('web')

insert into cursos(descricao, categoria_id, total_horas,valor)
values 
    ('Ef Core', 1, 17, 300),
    ('Sql Server', 1, 6, 200),
    ('Asp Net', 3, 30, 500),
    ('identity Server', 2, 4, 100)

insert into alunos_cursos(aluno_id, curso_id)
values
    (1,1),
    (1,2),
    (2,3),
    (3,1),
    (4,4),
    (5,1),
    (5,2),
    (5,3)

--distintct => não retorna dados repetidos na consulta
select distinct cidade,estado from alunos;

--order by => consultas com resultador ordenados
select * from alunos
order by nome, cpf,estado;

--limitar quantidade de registros retornados
--select top 10 percent * from alunos => retorna quantidade por porcentagem
select top 5 * from alunos
order by id;

--retornar registro com paginação (ignorar registros a partir de certas linhas)
select * from alunos
order by id
offset 2 rows
fetch first 3 rows only;

--retornar dados de acordo com filtro (where)
select * from alunos
-- where nome = 'mateus'
where id >= 2;

--filtro com and (&&)
select * from alunos
where id >= 1 and
nome = 'Mateus';

--filtro com or (||)
select * from alunos
where id <= 5 or
nome = 'Maria';

--like => filtro em campos de textos para retornar de acordo com caracteres desejado 
select * from alunos
-- where nome like 'mateus'
-- where nome like 'M%' --pesquisa no inicio
-- where nome like '%S' --pesquisa no fim
where nome like '%L%' --pesquisa no meio

--obter valor maximo e minimo de uma tabela
-- select min(id) from alunos
-- select max(id) from alunos
select * from alunos
where id = (select max(id) from alunos)

--funcoes de agregacao para contar e somar dados
select count(*), 
sum(total_horas) from cursos

--agrupando registros com mesmo valor com order by
select cidade, estado, count(*) from alunos
group by cidade, estado

--having => filtra retorno de acordo com funcao executada
select cidade, estado, count(*) total from alunos
group by cidade, estado
having count(*) > 2

--IN => passar mais de um parametro no filtro
select * from alunos
where id in(2,3,4);

--Between => filtros por intervalos (datas, numeros, decimais)
select * from alunos
where id between 2 and 5;