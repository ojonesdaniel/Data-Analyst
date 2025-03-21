# 📌 **Funções Condicionais no SQL Server**

As funções condicionais no SQL Server permitem realizar lógicas dentro das consultas, modificando o retorno com base em condições definidas.

---

## 🔹 **CASE WHEN ... ELSE ... END**

A estrutura `CASE` é utilizada para retornar diferentes valores com base em condições específícas.

### **Exemplo 1: Classificação Simples**
```sql
SELECT Nome, Idade,
    CASE
        WHEN Idade < 18 THEN 'Menor de idade'
        WHEN Idade BETWEEN 18 AND 60 THEN 'Adulto'
        ELSE 'Idoso'
    END AS FaixaEtaria
FROM Pessoas;
```
**Retorno esperado:**
| Nome  | Idade | FaixaEtaria     |
|--------|--------|----------------|
| Ana    | 16    | Menor de idade  |
| Carlos | 35    | Adulto          |
| João   | 70    | Idoso           |

### **Exemplo 2: Substituindo Valores**
```sql
SELECT Produto, Estoque,
    CASE Estoque
        WHEN 0 THEN 'Sem estoque'
        WHEN 1 THEN 'Estoque baixo'
        ELSE 'Disponível'
    END AS StatusEstoque
FROM Produtos;
```

---

## 🔹 **IIF** *(Alternativa mais concisa para CASE WHEN)*

A função `IIF` funciona como um `IF` de lógica booleana e é uma alternativa mais curta para `CASE WHEN`.

### **Exemplo:**
```sql
SELECT Nome, Salario,
    IIF(Salario > 5000, 'Alto', 'Baixo') AS CategoriaSalarial
FROM Funcionarios;
```
**Retorno esperado:**
| Nome  | Salario | CategoriaSalarial |
|--------|--------|-------------------|
| Maria  | 6000   | Alto              |
| Pedro  | 4000   | Baixo             |

---

## 🔹 **ISNULL** *(Substitui valores NULL por um padrão definido)*

A função `ISNULL` permite substituir valores `NULL` por um padrão definido.

### **Exemplo:**
```sql
SELECT Nome, ISNULL(Email, 'Email não informado') AS Email
FROM Clientes;
```
**Retorno esperado:**
| Nome  | Email                |
|--------|----------------------|
| João   | joao@email.com      |
| Ana    | Email não informado |

---

## 🔹 **Conclusão**
Essas funções são extremamente úteis para manipulação de dados e melhoria na apresentação dos resultados. 🚀

