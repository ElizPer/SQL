#criar database
create database ContasReceber;
use ContasReceber;

#Criar a tabela contas a receber.
create table conta_receber(
nome varchar(40),
numero int not null, 
valor float, 
vencimento date,
banco varchar(10)
);
alter table conta_receber add primary key(numero);
alter table conta_receber modify banco varchar(20);

#inserindo os dados
insert into conta_receber values (
'ABC PAPELARIA', 
100100,
5000.00,
'2017-01-20',
'ITAU'
);

insert into conta_receber values (
'LIVRARIA FERNANDES',
100110,
2500.00,
'2017/01/22',
'ITAU'
);

delete from conta_receber where numero = 100120;

insert into conta_receber values (
'LIVRARIA FERNANDES',
100120,
1500.00,
'2016-10-15',
'BRADESCO'
);

insert into conta_receber values (
'ABC PAPELARIA',
100130,
8000.00,
'2016/10/15',
'SANTANDER'
);

insert into conta_receber values (
'LER E SABER',
200120,
10500.00,
'2018-04-26',
'BANCO DO BRASIL'
);

insert into conta_receber values(
'LIVROS E CIA',
200125,
2000.00,
'2018-04-26',
'BANCO DO BRASIL'
);

insert into conta_receber values(
'LER E SABER',
200130,
11000.00,
'2018-09-26',
'ITAU'
);

insert into conta_receber values(
'PAPELARIA SILVA',
250350,
1500.00,
'2018-01-26',
'BRADESCO'
);

insert into conta_receber values(
'LIVROS MM',
250360,
500.00,
'2018-12-18',
'SANTANDER'
);

insert into conta_receber values(
'LIVROS MM',
250370,
3400.00,
'2018-04-26',
'SANTANDER'
);

insert into conta_receber values(
'PAPELARIA SILVA',
250380,
3500.00,
'2018-04-26',
'BANCO DO BRASIL'
);

insert into conta_receber values(
'LIVROS E CIA',
453360,
1500.00,
'2018-06-15',
'ITAU'
);

insert into conta_receber values(
'LIVROS MM',
453365,
5400.00,
'2018-06-15',
'BRADESCO'
);

insert into conta_receber values(
'PAPELARIA SILVA',
453370,
2350.00,
'2017-12-27',
'ITAU'
);

insert into conta_receber values(
'LIVROS E CIA',
453380,
1550.00,
'2017-12-27',
'BANCO DO BRASIL'
);

insert into conta_receber values(
'ABC PAPELARIA',
980130,
4000.00,
'2016-12-11',
'ITAU'
);

insert into conta_receber values(
'LIVRARIA FERNANDES',
770710,
2500.00,
'2016-11-15',
'SANTANDER'
);

insert into conta_receber values(
'ABC PAPELARIA',
985001,
3000.00,
'2016-09-11',
'ITAU'
);

insert into conta_receber values(
'PAPEL E AFINS',
985002,
2500.00,
'2016-03-13',
'SANTANDER'
);

insert into conta_receber values(
'LER E SABER',
888132,
2500.00,
'2017-03-05',
'ITAU'
);