# Otimizando Consultas SQL Server

O principal método utilizado para **otimizar as consultas** foi a **criação de índices** nas **chaves estrangeiras (FKs)**, visando melhorar o desempenho nas junções entre tabelas.

Em casos onde era necessária uma otimização mais avançada, foram aplicados **índices não clusterizados**, permitindo acesso mais rápido aos dados sem impactar a estrutura física das tabelas principais.



## Consulta 1




##  Consulta 2 — Análise de Plano de Execução

* **Sem índice:** 0,102458
* **Com índice:** 0,05989

A criação do índice reduziu o tempo de execução da consulta em aproximadamente **41%**, evidenciando o impacto positivo da otimização por meio de índices adequados.


