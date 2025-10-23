-- Consulta  sem index 0,04779  com index 0,02943

SELECT 
    c.Cod_Categoria,
    c.Tipo,
    c.Descricao,
    COUNT(p.Cod_Produto) AS Quantidade_Produtos
FROM 
    Categoria AS c
INNER JOIN 
    Produto AS p ON c.Cod_Categoria = p.Cod_Categoria
GROUP BY 
    c.Cod_Categoria, c.Tipo, c.Descricao
HAVING 
    COUNT(p.Cod_Produto) >= 3
ORDER BY 
    Quantidade_Produtos DESC;




create nonclustered index ix_produto_2 
on produto (cod_categoria) include (nome_produto, valor_unitario, cod_produto);


-- drop index ix_produto_2 on produto;



