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
