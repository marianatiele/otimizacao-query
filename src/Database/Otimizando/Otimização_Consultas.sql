-- Utilizando o Plano de Excecução 
-- select p.itens, c.nome from pedido p join cliente c on c.cod_cliente = p.cod_cliente
-- RECOMENDAÇÂO

-- Índice Ausente (Impacto 90.318): CREATE NONCLUSTERED INDEX 
-- [<Name of Missing Index, sysname,>]
-- ON [dbo].[Pedido] ([Cod_Cliente]) INCLUDE ([Itens])

CREATE NONCLUSTERED INDEX  ix_otimizacao on pedido (cod_cliente) 
INCLUDE (itens, cod_pedido, valor_total);

DROP  INDEX ix_otimizacao on pedido;


select p.itens, c.nome from  pedido p 
join cliente c on c.cod_cliente = p.cod_cliente;


select * from pedido; 

select nome, cidade from cliente order by cidade desc;


select nome, cidade from cliente where cidade = 'Valparaíso de Goiás';


