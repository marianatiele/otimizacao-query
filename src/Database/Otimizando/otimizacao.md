# Otimizando Consultas no SQL Server

O principal método utilizado para **otimizar as consultas** foi a **criação de índices** nas **chaves estrangeiras (FKs)**, com o objetivo de melhorar o desempenho nas junções entre tabelas.

Em casos que exigiram uma otimização mais avançada, foram aplicados **índices não clusterizados**, permitindo um acesso mais rápido aos dados sem impactar a estrutura física das tabelas principais.


## Consulta 1

Após a **análise do plano de execução** e a **criação de um índice não clusterizado**, os resultados foram:

* **Sem índice:** 0,04779
* **Com índice:** 0,02943

A otimização resultou em uma **redução de aproximadamente 38% no tempo de execução**, demonstrando o impacto positivo da criação de índices nas FKs.



## Consulta 2

Após a **análise do plano de execução** e a **criação de um índice não clusterizado**, observou-se:

* **Sem índice:** 0,102458
* **Com índice:** 0,05989

A criação do índice reduziu o tempo de execução da consulta em cerca de **41%**, evidenciando a eficiência da otimização por meio de índices adequados.



