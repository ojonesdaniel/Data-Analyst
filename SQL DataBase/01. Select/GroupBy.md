# **GROUP BY no SQL**

O comando **GROUP BY** é utilizado para agrupar linhas que possuem valores iguais em colunas especificadas, geralmente acompanhado por funções agregadas como **SUM, COUNT, AVG, MIN, MAX**.

## **Sintaxe Básica:**
```sql
SELECT Coluna, SUM(OutraColuna)
FROM SuaTabela
GROUP BY Coluna;
```

## **Exemplo Prático:**
```sql
SELECT Categoria, COUNT(*) AS TotalProdutos
FROM Produtos
GROUP BY Categoria;
```
- Agrupa os produtos por categoria e conta quantos produtos há em cada categoria.

---

# **GROUP BY + ORDER BY**

O **ORDER BY** pode ser usado junto com **GROUP BY** para ordenar os resultados.

## **Exemplo:**
```sql
SELECT Categoria, AVG(Preco) AS PrecoMedio
FROM Produtos
GROUP BY Categoria
ORDER BY PrecoMedio DESC;
```
- Agrupa os produtos por categoria, calcula a média dos preços e ordena do maior para o menor.

---

# **GROUP BY + WHERE**

O **WHERE** é usado antes do **GROUP BY** para filtrar os dados antes da agregação.

## **Exemplo:**
```sql
SELECT Categoria, SUM(Preco) AS TotalVendas
FROM Produtos
WHERE Estoque > 10
GROUP BY Categoria;
```
- Filtra os produtos que têm mais de 10 unidades em estoque antes de agrupar e somar as vendas.

---

# **GROUP BY + HAVING**

O **HAVING** é semelhante ao **WHERE**, mas é usado após o **GROUP BY** para filtrar os resultados das funções agregadas.

## **Exemplo:**
```sql
SELECT Categoria, COUNT(*) AS TotalProdutos
FROM Produtos
GROUP BY Categoria
HAVING COUNT(*) > 5;
```
- Exibe apenas as categorias que têm mais de 5 produtos cadastrados.

---

# **Diferença entre WHERE e HAVING**

| Característica | WHERE | HAVING |
|--------------|--------|--------|
| Uso | Filtra antes do agrupamento | Filtra depois do agrupamento |
| Pode usar funções agregadas? | ❌ Não | ✅ Sim |
| Exemplo | `WHERE Preco > 100` | `HAVING SUM(Preco) > 1000` |

## **Exemplo Comparativo:**
```sql
-- WHERE (filtra antes do agrupamento)
SELECT Categoria, SUM(Preco) AS TotalVendas
FROM Produtos
WHERE Estoque > 10
GROUP BY Categoria;

-- HAVING (filtra depois do agrupamento)
SELECT Categoria, SUM(Preco) AS TotalVendas
FROM Produtos
GROUP BY Categoria
HAVING SUM(Preco) > 5000;
```

---

Esses conceitos são fundamentais para manipular e analisar grandes volumes de dados no SQL. Se precisar de mais detalhes ou exemplos, só avisar! 🚀