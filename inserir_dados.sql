```sql
-- =====================================================
-- Projeto: Análise de Vendas de uma Loja Online
-- Arquivo 2: Inserção dos dados de exemplo
-- =====================================================

INSERT INTO clientes VALUES
(1, 'Ana Souza', 'São Paulo', 'SP'),
(2, 'Bruno Lima', 'Rio de Janeiro', 'RJ'),
(3, 'Carla Mendes', 'Belo Horizonte', 'MG'),
(4, 'Diego Alves', 'São Paulo', 'SP'),
(5, 'Elaine Costa', 'Curitiba', 'PR');

INSERT INTO produtos VALUES
(1, 'Notebook', 'Eletrônicos', 3500.00),
(2, 'Mouse', 'Acessórios', 80.00),
(3, 'Teclado', 'Acessórios', 150.00),
(4, 'Monitor', 'Eletrônicos', 900.00),
(5, 'Cadeira Gamer', 'Móveis', 1200.00);

INSERT INTO pedidos VALUES
(1, 1, 1, 1, '2026-01-10'),
(2, 2, 2, 2, '2026-01-15'),
(3, 3, 4, 1, '2026-02-03'),
(4, 1, 3, 1, '2026-02-10'),
(5, 4, 5, 1, '2026-03-05'),
(6, 5, 2, 3, '2026-03-12'),
(7, 2, 1, 1, '2026-03-20'),
(8, 4, 4, 2, '2026-04-01');

```
