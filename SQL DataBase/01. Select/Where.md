## **ORDER BY (Ordenação de Resultados)**
```sql
SELECT TOP(100)
    *
FROM
    SuaTabela
ORDER BY
    ColunaDaTabela DESC;
```
### **Explicação:**
- **ORDER BY** define a ordenação dos resultados com base em uma ou mais colunas.
- **DESC** ordena em ordem **decrescente**.
- **ASC** (opcional) ordena em ordem **crescente** (padrão).

### **Variações do ORDER BY:**
```sql
-- Ordenação crescente (padrão)
SELECT * FROM SuaTabela 
ORDER BY Coluna;

-- Ordenação decrescente
SELECT * FROM SuaTabela 
ORDER BY Coluna DESC;

-- Ordenando por múltiplas colunas
SELECT * FROM SuaTabela 
ORDER BY Coluna1 ASC, Coluna2 DESC;
```
## **WHERE (Filtrando Resultados)**
```sql
SELECT
    *
FROM
    SuaTabela
WHERE Coluna = 'Valor';
```
### **Explicação:**
- **WHERE** é usado para filtrar registros com base em uma condição.
- Pode ser aplicado em colunas de texto, números ou datas.

## **Operadores SQL**

### **`IN` (Filtra valores dentro de uma lista)**
```sql
SELECT * FROM Produtos 
WHERE Categoria IN ('Eletrônicos', 'Roupas');
```

### **`LIKE` (Busca padrões em textos)**
```sql
SELECT * FROM Clientes 
WHERE Nome LIKE 'Ana%'; -- Começa com "Ana"
```

### **`AND` (Exige que todas as condições sejam verdadeiras)**
```sql
SELECT * FROM Vendas 
WHERE Categoria = 'Eletrônicos' AND Preco < 500;
```

### **`BETWEEN` (Filtra valores dentro de um intervalo)**
```sql
SELECT * FROM Pedidos 
WHERE Data BETWEEN '2024-01-01' AND '2024-12-31';
```

### **`OR` (Exige que pelo menos uma condição seja verdadeira)**
```sql
SELECT * FROM Produtos 
WHERE Estoque < 10 OR Preco > 1000;
```

### **`NOT` (Inverte a condição)**
```sql
SELECT * FROM Clientes 
WHERE Nome NOT LIKE 'A%'; -- Não começa com "A"
```
