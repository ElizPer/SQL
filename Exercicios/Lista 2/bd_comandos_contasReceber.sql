use ContasReceber;
select * from conta_receber;

#1- Listar nome,vencimento e valor de cada duplicata da tabela.
select nome, vencimento, valor from conta_receber;

#2- Apresentar o número das duplicatas depositadas no banco Itaú
select numero from conta_receber where banco= 'ITAU';

#3- Apresentar o número das duplicatas depositadas no banco Banco do Brasil
select numero from conta_receber where banco= 'Banco do Brasil';

#4- Quais são as duplicatas (número, vencimento, valor e nome) que vencem no ano de 2017.
select nome, numero, valor, vencimento 
from conta_receber 
where vencimento >= '2017-1-1' and vencimento <= '2017-12-1';

#5- Apresentar as duplicatas (número, vencimento, valor e nome) que não estão depositadas nos bancos Itaú e Santander.
select nome, numero, valor, vencimento, banco 
from conta_receber
where not banco = 'ITAU' and not banco = 'Santander';

#6- Quanto é o valor da divida o cliente PAPELARIA SILVA, e quais são as duplicatas?
select nome, sum(valor) from conta_receber
where nome = 'PAPELARIA SILVA';

#7- Retirar da tabela a duplicata 770710 do cliente LIVRARIA FERNANDES, por ter sido devidamente quitada.
delete from conta_receber 
where numero = 770710;

#8- Apresentar uma listagem em ordem alfabética por nome do cliente de todos os campos da tabela.
select * from conta_receber
order by nome ASC;

#9- Apresentar uma listagem em ordem de data de vencimento com o nome do cliente, banco, valor e vencimento.
select nome, banco, valor, vencimento from conta_receber
order by vencimento ASC;

#10- As duplicatas do Banco do Brasil foram transferidas para o Santander. Proceder o ajuste dos registros.
update conta_receber 
set banco =  'SANTANDER'
where banco = 'Banco do Brasil';

#11- Quais são os clientes que possuem suas duplicatas depositadas no Banco Bradesco?
select * from conta_receber
where banco = 'Bradesco';

#12- Qual é a previsão de recebimento no período de 01/01/2016 até 31/12/2016?
select sum(valor) from conta_receber
where vencimento between '2016-01-01' and '2016-12-31';

#Testando o GROUP BY
select count(nome), banco from conta_receber
group by banco; 

#13- Quanto a empresa tem para receber no período de 01/08/2016 até 30/08/2016?
select sum(valor) from conta_receber
where vencimento 
between '2016-08-01' and '2016-08-30';

#15. Acrescentar uma multa de 15% para todos os títulos que se encontram vencidos no período de 01/01/2016 até 31/12/2016.
select valor, round((valor * 0.15) + valor) as valor_com_multa
from conta_receber
where vencimento 
between '2016-01-01' and '2016-12-31';

#16- Acrescentar uma multa de 5% para todos os títulos vencidos entre 01/01/2017 e 31/05/2017 que sejam do cliente LER E SABER.
select nome, valor, round((valor * 0.05) + valor) as valor_com_multa
from conta_receber
where vencimento 
between '2017-01-01' and '2017-05-31' and nome = 'LER E SABER';

#17- Qual é a média aritmética dos valores das duplicatas do ano de 2016?
select avg(valor)
from conta_receber
where vencimento
between '2016-01-01' and '2016-12-31';

#18- Exiba as duplicatas e nome dos respectivos clientes que possuem duplicatas com valor superior a 10000,00?
select nome, valor from conta_receber
where valor >10000;

#19- Qual o valor total das duplicatas lançadas para o banco Santander?
select sum(valor) from conta_receber
where banco = 'Santander';

#20- Quais são os clientes que possuem suas duplicatas depositadas nos Bancos Bradesco ou Itaú?
select nome from conta_receber
where banco = 'Bradesco' or banco = 'Itau';
