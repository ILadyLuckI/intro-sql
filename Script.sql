select * from pedido p 
/*contador - contar registro*/
select count(p.dt_fim) from pedido p

/*traz a maior quantidade para determinada coluna */
select max(p.dt_fim) from pedido p 

select min(p.pedido_id) from pedido p 

/* avg - media de valores */ 
select avg(c.tempo_preparo) from cardapio c 

/* */
select length(c.nome) from cardapio c 

select * from usuario u 
order by u.tppessoa_id desc 

/*usado para retornar uma quantidade*/
select count(u,tppessoa_id) 
, u.tppessoa_id             
from usuario u 
group by u.tppessoa_id 
/*usado para selecionar um periodo de tempo*/
select to_char(p.dt_inic, 'dd/mm/yyyy')
from pedido p 
where p.dt_inic >= '14/12/2021'
and p.dt_inic <= '29/12/2021'

/*ainda outra forma de selecionar um período de tempo*/
select to_char(p.dt_inic, 'dd/mm/yyyy')
from pedido p 
where p.dt_inic between '15/12/2021' and '29/12/2021'

select p.aprovado as status,
p.comanda_id
from pedido p 







