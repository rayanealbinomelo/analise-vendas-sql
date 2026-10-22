# 📊 Análise de Vendas de uma Loja Online com SQL

Projeto de consulta de dados em SQL, feito para praticar os fundamentos da linguagem com um cenário de negócio simples.

## 🎯 Objetivo

Responder a perguntas de uma loja online fictícia sobre clientes, produtos e pedidos, usando consultas SQL.

## 🛠️ Tecnologias

- SQL (MySQL / SQLite / PostgreSQL)
- Ferramentas: DBeaver, MySQL Workbench ou SQLite Online

## 🗂️ Estrutura do banco de dados

O banco tem 3 tabelas relacionadas:

| Tabela | Descrição | Principais colunas |
|---|---|---|
| `clientes` | Dados dos clientes | id_cliente, nome, cidade, estado |
| `produtos` | Catálogo de produtos | id_produto, nome_produto, categoria, preco |
| `pedidos` | Compras realizadas | id_pedido, id_cliente, id_produto, quantidade, data_pedido |

**Relacionamentos:**
- `pedidos.id_cliente` → `clientes.id_cliente`
- `pedidos.id_produto` → `produtos.id_produto`

## 📁 Arquivos do projeto

```
├── criar_tabelas.sql    # Criação das tabelas
├── inserir_dados.sql    # Dados de exemplo
├── consultas.sql        # Consultas de análise
└── README.md
```

## ❓ Perguntas respondidas

| # | Pergunta de negócio | Conceitos de SQL usados |
|---|---|---|
| 1 | Quais produtos custam mais de R$ 500? | `SELECT`, `WHERE`, `ORDER BY` |
| 2 | Quantos clientes existem por estado? | `COUNT`, `GROUP BY` |
| 3 | Qual o valor total de cada pedido? | `JOIN`, cálculo entre colunas |
| 4 | Qual o faturamento total da loja? | `SUM`, `JOIN` |
| 5 | Qual o faturamento por categoria? | `SUM`, `GROUP BY`, `JOIN` |
| 6 | Quais clientes mais gastaram? | `SUM`, `GROUP BY`, `ORDER BY` |
| 7 | Qual o produto mais vendido? | `SUM`, `ORDER BY`, `LIMIT` |

## 💡 Exemplo de consulta

**Faturamento por categoria:**

```sql
SELECT pr.categoria,
       SUM(p.quantidade * pr.preco) AS faturamento
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto
GROUP BY pr.categoria
ORDER BY faturamento DESC;
```

**Resultado esperado:**

| categoria | faturamento |
|---|---|
| Eletrônicos | 9200.00 |
| Móveis | 1200.00 |
| Acessórios | 550.00 |

## ▶️ Como executar

1. Abra uma ferramenta de SQL (ex.: DBeaver ou SQLite Online).
2. Execute o arquivo `criar_tabelas.sql`.
3. Execute o arquivo `inserir_dados.sql`.
4. Execute as consultas do arquivo `consultas.sql`, uma por vez.

## 📚 Aprendizados

- Criação de tabelas e relacionamentos com chave primária e estrangeira.
- Uso de `JOIN` para combinar dados de várias tabelas.
- Uso de funções de agregação (`SUM`, `COUNT`) com `GROUP BY`.
- Ordenação e filtro de resultados com `ORDER BY`, `WHERE` e `LIMIT`.

## 🚀 Próximos passos

- [ ] Usar `LEFT JOIN` para identificar clientes sem pedidos
- [ ] Aplicar `HAVING` e subconsultas
- [ ] Analisar o faturamento por mês com funções de data
- [ ] Ampliar a base com mais registros

## 👩‍💻 LinkedIn: www.linkedin.com/in/rayanealbino
