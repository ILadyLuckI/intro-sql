/*usando inner join*/
select c.comanda_id , u.nome , u.cpf from comanda c

inner join usuario u on c.usuario_id = u.usuario_id

select * from usuario u

select * from usuario u where usuario_id = 1

/*usando a clausula having*/
select u.nome
, u.cpf
, count(c.comanda_id) as tem_comanda
from usuario u 
left join comanda c on u.usuario_id = c.comanda_id

group by u.nome
,u.cpf
having sum(c.comanda_id) = 1

/*usando a clausula limit, que serve para 
 * restringir o numero de duplas
 * que sera retornado no resultado da query
 */
select * from usuario u 
order by u.usuario_id desc 
limit 1

/*usando trunc e truncate, serve para deletar registros
 * de uma tabela
 */
create table teste_daiana(c varchar(10))

select * from teste_daiana
insert into teste_daiana (c) values('c')

select * from teste_daiana

truncate teste_daiana 

select * from teste_daiana

rollback

select * from teste_daiana

/*usando trunc*/
select * from pedido p 

update pedido set dt_fim = current_date
where pedido_id = 1

commit

select avg(8.0 + 4.5) from pedido p

select trunc(avg(8.0 + 4.5)) from pedido p /*tras o numero inteiro*/

/*usando a clausula is null e is not null, que 
 * pode ser usada para resolver a questão do
 * nulo na coluna da query
 */
select * from usuario u 
left join comanda c on u.usuario_id = c.usuario_id
where c.comanda_id is not null
and c.dt_encerramento is null

/*usando clausula like para capturar trechos de uma string*/
/*a clausula like é case sensitive*/
select * from tipo_pessoa tp 
where tp.descricao like 'FUNCIONARIO'

insert into tipo_pessoa (descricao)
values ('Comissaria');

commit

select * from tipo_pessoa tp 
where tp.descricao like 'Fu%' /*retornou apenas 'Funcionaria', 
pois esta clausula é case-sensitive*/

select * from tipo_pessoa tp 
where tp.descricao ilike 'Fu%' /*retornou
 *a clausula 'ilike' é case-insensitive, ou seja, 
 *não faz distinção entre letras maiúsculas e minúsculas*/


select * from tipo_pessoa tp 
where lower(tp.descricao) like lower('Fu%')
/*obs: a posicao onde é colocado o sinal de porcentagem
 * definine a busca. Colocar o sinal no fim irá retornar
 * as strings iniciais, ao ser colocadas antes da busca
 * irá retornar o final da string.
 * Pode- se também colocar um sinal de underline ('_s%'),
 * indicando que a primeira letra não importa para a pesquisa,
 * apenas a segunda que é a letra 's'.
 * Pode- se também colocar mais underline ('_s_a%'), indicando que 
 * nem a primeira e nem a terceira letra importam na busca.
 * Obs. Isso parece um jogo da forca! rsrs
 */

/*a clausula replace serve para substituir
 * ocorrências especificas de uma string por outra
 * dentro de um valor de coluna.
 */
select * from cardapio c 
select replace (c.nome, '350 ml', 'lata') from cardapio c 


/*clausula trim (ltrim, rtrim, btrim), serve para remover um caracter de uma string ou 
 * conjunto numerico
 * exemplos: ltrim remove um caracter a esquerda;
 * rtrim remove um caracter a direita;
 * btrim remove um caracter no começo e no final da frase;
 */
select rtrim(c.nome, 'ml') , c.* 
from cardapio c 

/*clausula lpad e rpad;
 * quando uma coluna é definida para ser preenchida com determinado
 * numero de caracteres, e ao escrever uma string esse numero não é completado,
 * o lpad/rpad completa automaticamente com um determinado caractere
 * rpad('origem', length, 'preencher com')
 */
select rpad('Daiana Koblitz', 50 , '*')



















