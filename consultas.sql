```sql
-- =====================================================
-- Projeto: Análise de Vendas de uma Loja Online
-- Arquivo 3: Consultas de análise
-- =====================================================

-- 1) Quais produtos custam mais de R$ 500?
SELECT nome_produto, preco
FROM produtos
WHERE preco > 500
ORDER BY preco DESC;

-- 2) Quantos clientes existem por estado?
SELECT estado, COUNT(*) AS total_clientes
FROM clientes
GROUP BY estado;

-- 3) Qual o valor total de cada pedido?
SELECT p.id_pedido, c.nome, pr.nome_produto,
       p.quantidade * pr.preco AS valor_total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN produtos pr ON p.id_produto = pr.id_produto;

-- 4) Qual o faturamento total da loja?
SELECT SUM(p.quantidade * pr.preco) AS faturamento_total
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto;

-- 5) Qual o faturamento por categoria?
SELECT pr.categoria,
       SUM(p.quantidade * pr.preco) AS faturamento
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto
GROUP BY pr.categoria
ORDER BY faturamento DESC;

-- 6) Quais clientes mais gastaram?
SELECT c.nome,
       SUM(p.quantidade * pr.preco) AS total_gasto
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN produtos pr ON p.id_produto = pr.id_produto
GROUP BY c.nome
ORDER BY total_gasto DESC;

-- 7) Qual o produto mais vendido (em quantidade)?
SELECT pr.nome_produto, SUM(p.quantidade) AS total_vendido
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto
GROUP BY pr.nome_produto
ORDER BY total_vendido DESC
LIMIT 1;

```
