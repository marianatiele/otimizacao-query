# Projeto de Otimização de Consultas no SQL Server

##  Descrição

Este projeto tem como objetivo **analisar e otimizar consultas SQL** em um banco de dados de e-commerce desenvolvido no **SQL Server**.
A modelagem lógica foi criada no **brModelo**, com entidades como **Categoria**, **Produto**, **Pedido** e **Cliente**, simulando um cenário real de operações comerciais.

Durante o processo, foram aplicadas técnicas de **tuning de consultas**, **análise de planos de execução** e **criação de índices** (clusterizados e não clusterizados) para avaliar o impacto no desempenho das consultas.



##  Problema

O desafio consistiu em **consultar uma tabela com aproximadamente 5.000 linhas**, buscando o **menor tempo possível de execução**, sem comprometer a integridade dos dados ou a estrutura do banco.


##  Resultados

### 🔹 Consulta 1

Após a análise do plano de execução e criação de um índice não clusterizado:

* **Sem índice:** 0,04779
* **Com índice:** 0,02943

💡 Redução de aproximadamente **38%** no tempo de execução.

### 🔹 Consulta 2

Após a análise do plano de execução e criação de um índice não clusterizado:

* **Sem índice:** 0,102458
* **Com índice:** 0,05989

Redução de aproximadamente **41%** no tempo de execução.



##  Conclusões

A criação de **índices em colunas estratégicas**, especialmente nas **chaves estrangeiras**, proporcionou **ganhos significativos de performance** nas consultas.

O estudo reforçou a importância de:

* Analisar planos de execução para identificar gargalos.
* Escolher o tipo de índice adequado para cada cenário.
* Medir o impacto das otimizações com base em métricas reais.

Este projeto consolida conhecimentos fundamentais em **otimização de consultas** e **administração de bancos de dados**, essenciais para a atuação como **DBA Júnior**.


