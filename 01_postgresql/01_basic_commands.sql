create table teste

create table tabela_teste(
	id int,
	nome varchar(50),
	endereco varchar(70),
	cpf char(11)
)

select * from tabela_teste

INSERT INTO tabeLA_teste (id, nome, endereco, cpf) VALUES(1, 'Vinícius', 'Rua de Teste numero 5', '12345678912')

INSERT INTO tabeLA_teste (id, nome, endereco, cpf) 
VALUES
(2, 'João', 'Rua de Teste numero 2', '12341678912'),
(3, 'Maria', 'Rua de Teste numero 3', '12354678912'),
(4, 'Clara', 'Rua de Teste numero 4', '12345677912'),
(5, 'Eduarda', 'Rua de Teste numero 1', '12345634912'),
(6, 'Matheus', 'Rua de Teste numero 6', '12345621912')

drop table tabela_teste