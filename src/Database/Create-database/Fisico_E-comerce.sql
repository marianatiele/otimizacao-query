/* L�gico_E-comerce: */

CREATE TABLE Cliente (
    Cod_Cliente INTEGER PRIMARY KEY,
    Nome VARCHAR(75) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Rua VARCHAR(50) NOT NULL,
    Num_Residencia INTEGER NOT NULL
);

CREATE TABLE Pedido (
    Cod_Pedido INTEGER PRIMARY KEY,
    Itens VARCHAR(100) NOT NULL,
    Cod_Cliente INTEGER NOT NULL,
    Valor_Total DECIMAL NOT NULL,
    FOREIGN KEY (Cod_Cliente)
    REFERENCES Cliente (Cod_Cliente)
);


CREATE TABLE Categoria (
    Cod_Categoria INTEGER PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
    Descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Produto (
    Cod_Produto INTEGER PRIMARY KEY,
    Nome_Produto VARCHAR(50) NOT NULL,
    Valor_Unitario DECIMAL NOT NULL,
    Cod_Categoria INTEGER NOT NULL,
       
    FOREIGN KEY (Cod_Categoria)
    REFERENCES Categoria (Cod_Categoria)
);



CREATE TABLE Tem (
    Cod_Pedido INTEGER NOT NULL,
    Cod_Produto INTEGER NOT NULL,
    Quantidade INTEGER NOT NULL,

    PRIMARY KEY (Cod_Pedido, Cod_Produto),

    FOREIGN KEY (Cod_Pedido)
    REFERENCES Pedido (Cod_Pedido),
    
    FOREIGN KEY (Cod_Produto)
    REFERENCES Produto (Cod_Produto)
  
 
);

CREATE TABLE Telefone (
    Cod_Telefone INTEGER PRIMARY KEY,
    Cod_Cliente INTEGER NOT NULL,
    Telefone BIGINT NOT NULL,

    FOREIGN KEY (Cod_Cliente)
    REFERENCES Cliente (Cod_Cliente)
);
 
