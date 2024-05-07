#1-Criando o bando de dados
create database vendas;

#Usando a tabela vendas
use vendas;

#2- Criando a tabela Produto e suas colunas
create table Produto (
codigo_produto int not null auto_increment, 
descricao_produto varchar(30), 
preco_produto float, 
primary key(codigo_produto) );

#3- Criando a tabela Nota_fiscal
create table Nota_fiscal (
numero_nf int not null auto_increment, 
data_nf date,
valor_nf float, 
primary key(numero_nf));

#4- Criando a tabela Itens e fazendo a foreing key 
create table Itens (
produto_codigo_produto int,
nota_fiscal_nota int,
num_item int,
qtde_item int,
foreign key (produto_codigo_produto) references Produto(codigo_produto),
foreign key (nota_fiscal_nota) references Nota_fiscal(numero_nf)
);
#inserindo uma novo item para ser a chave primaria
alter table itens add column testePK int;
alter table itens add primary key (testePK);

#5- Alterar o campo Descrição_Produto da tabela Produto para tipo Varchar(50)
alter table Produto modify column descricao_produto varchar(50);

#6- Alterar a tabela Nota_Fiscal, adicionando o campo ICMS, do tipo float depois do campo Numero_NF
alter table Nota_fiscal add ICMS float after numero_nf;

#7- Alterar a tabela Produto, adicionando o campo Peso, do tipo float;
alter table Produto add peso float;

#8- Fazer com que a chave primária da tabela Itens deixe de ser testePK e passe a ser o Num_tem
alter table itens add primary key (num_item);

#por já existir uma PK será necessário deletar a PK existente e add uma nova
alter table itens drop primary key, add primary key(num_item);

#apagando testePK
alter table itens drop testePK;

#9- Apresentar a estrutura da tabela Produto
select * from Produto;

#10- Apresentar a estrutura da tabela Nota_fiscal
select * from Nota_fiscal;

#11- Alter o nome do campo Valor_NF da tabela Nota_fiscal para ValorTotal_NF
alter table Nota_fiscal rename column valor_ng to valortotal_nf;

#12- Remover o campo data_nf da tabela Nota_fiscal
alter table Nota_fiscal drop column data_nf;

#13- Remover a tabela Itens do modelo de dados
drop table itens;

#14- Alterar o nome da tabela Nota_fiscal para Venda
rename table Nota_fiscal to Venda;
