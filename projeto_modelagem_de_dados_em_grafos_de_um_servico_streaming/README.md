# Sistema de Recomendação em Grafos - Neo4j

Este projeto foi desenvolvido como parte do desafio da do curso Neo4J - Análise de Dados com Grafos e foca em um sistema de recomendação de filmes e séries utilizando banco de dados em grafos.

## Tecnologias Utilizadas
- **Neo4j Aura DB** (Cloud Database)
- **Cypher Query Language**

## Modelagem do Grafo
A modelagem foi concebida para mapear usuários, obras (filmes/séries), elenco, diretores e gêneros.
O grafo é composto por nós de:
- `User`: Usuários do sistema.
- `Movie` / `Series`: Filmes e séries baseados na lista restrita.
- `Actor`: Elenco real das obras.
- `Director`: Diretores das obras.
- `Genre`: Categorias. 

E pelos seguintes relacionamentos: 
- **Relacionamentos:** WATCHED, ACTED_IN, DIRECTED, IN_GENRE.

### 1. Diagrama Conceitual (Rascunho)
Este foi o rascunho inicial que guiou a estrutura do banco de dados:

![Diagrama Conceitual do Grafo](projeto_modelagem_de_dados_em_grafos_de_um_servico_streaming/docs/rascunho_modelo.png)

### 2. Visualização do Grafo no Neo4j Aura (Implementação Final)
A imagem abaixo mostra o grafo populado com os usuários e obras da lista, rodando no ambiente de nuvem:

![Visualização Final do Grafo no Neo4j Aura](projeto_modelagem_de_dados_em_grafos_de_um_servico_streaming/docs/modelo-grafo.png)


## Como Executar
1. Execute os comandos em `scripts/schema.cypher` no console do Neo4j para criar as regras.
2. Execute `scripts/data-seed.cypher` para popular o banco.
3. Utilize as consultas em `scripts/queries.cypher` para testar as recomendações.