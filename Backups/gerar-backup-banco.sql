use CursoSql;

backup database CursoSql
to disk = 'c:/backup.bak'
with init,
name = 'backup do banco de dados'
