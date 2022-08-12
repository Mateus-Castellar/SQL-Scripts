create sequence MinhaSequencia
as int
start WITH 10
increment by 1
minvalue 10
maxvalue 1000
no cycle
--cycle => qdo chegar no valor maximo ele restarta o ciclo

select next value for MinhaSequencia;