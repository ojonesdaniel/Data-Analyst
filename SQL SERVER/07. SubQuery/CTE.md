# 🔍 Common Table Expressions (CTE) no SQL

As **Common Table Expressions (CTE)** são uma funcionalidade do SQL que permite definir tabelas temporárias dentro de uma consulta, facilitando a organização e reutilização de subqueries.

---

## 📌 **Sintaxe Básica do CTE**

```sql
WITH NomeDaCTE AS (
    -- Definição da CTE
    SELECT Colunas
    FROM Tabela
    WHERE Condicao
)
SELECT * FROM NomeDaCTE;
```

### 🔹 **Exemplo**

```sql
WITH ProdutosCaros AS (
    SELECT Nome, Preco
    FROM Produtos
    WHERE Preco > 1000
)
SELECT * FROM ProdutosCaros;
```

🔹 Cria uma CTE chamada `ProdutosCaros` que filtra produtos com preço acima de 1000, e depois faz uma seleção nela.

---

## 📌 **Vantagens do CTE**

✔ Melhora a **legibilidade** do código. ✔ Evita a repetição de **subqueries complexas**. ✔ Permite **recursividade**, útil para consultas hierárquicas. ✔ Substitui **views temporárias** sem precisar criar objetos permanentes no banco.

---

## 📌 **CTE Recursiva**

Uma **CTE recursiva** é usada para trabalhar com dados hierárquicos, como estrutura de funcionários ou categorias de produtos.

### 🔹 **Exemplo de CTE Recursiva**

```sql
WITH HierarquiaFuncionarios AS (
    SELECT ID, Nome, SupervisorID, 1 AS Nivel
    FROM Funcionarios
    WHERE SupervisorID IS NULL  -- Ponto de partida (Chefes)

    UNION ALL

    SELECT f.ID, f.Nome, f.SupervisorID, h.Nivel + 1
    FROM Funcionarios f
    INNER JOIN HierarquiaFuncionarios h
    ON f.SupervisorID = h.ID
)
SELECT * FROM HierarquiaFuncionarios;
```

🔹 Esse exemplo retorna a hierarquia de funcionários dentro da empresa, adicionando um nível para cada subordinado.

---

## 📌 **CTE vs Subquery vs View**

| Característica                 | CTE | Subquery | View |
| ------------------------------ | --- | -------- | ---- |
| Temporário                     | ✅   | ✅        | ❌    |
| Reutilizável na mesma consulta | ✅   | ❌        | ✅    |
| Melhor legibilidade            | ✅   | ❌        | ✅    |
| Persistente no banco           | ❌   | ❌        | ✅    |

---

As CTEs são extremamente úteis para simplificar consultas complexas e melhorar a organização do código SQL. 🚀

