
-- Criando Indicie  
CREATE INDEX id_tb_clinete ON [dbo].[Cliente] (cod_cliente);

CREATE INDEX id_tb_pedido ON [dbo].[Pedido] (cod_pedido);
CREATE INDEX id_tb_pedido_cli ON [dbo].[Pedido] (cod_cliente); -- essencial

CREATE INDEX id_tb_produto ON [dbo].[Produto] (cod_produto);
CREATE INDEX id_tb_produto_ca ON [dbo].[Produto] (cod_categoria);

CREATE INDEX id_tb_categoria ON [dbo].[Categoria] (cod_categoria);
 
 
-- Apagando os indicies 

drop index id_tb_clinete on cliente;

drop index id_tb_pedido on pedido;

drop index id_tb_pedido_cli on pedido;

drop index id_tb_produto on produto;

drop index id_tb_produto_ca on produto;

drop index id_tb_categoria on categoria;