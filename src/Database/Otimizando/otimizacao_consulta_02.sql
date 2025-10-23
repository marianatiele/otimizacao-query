--- Otimizando a consulta - sem index: 0,102458; consulta com index: 0,05989


select p.itens, c.nome from  pedido p 
join cliente c on c.cod_cliente = p.cod_cliente;


CREATE NONCLUSTERED INDEX  ix_otimizacao on pedido (cod_cliente) 
INCLUDE (itens, cod_pedido, valor_total);

-- DROP  INDEX ix_otimizacao on pedido;




