# 📌 Variáveis no SQL Server

No SQL Server, as variáveis são usadas para armazenar valores temporários durante a execução de uma consulta.

---

## 🔹 **Declaração e Atribuição de Variáveis**
```sql
DECLARE @Nome VARCHAR(100);
SET @Nome = 'João';
```
Ou usando `SELECT` para atribuir um valor:
```sql
DECLARE @Idade INT;
SELECT @Idade = 25;
```

---

## 🔹 **Tipos de Variáveis**

| Tipo de Variável  | Descrição |
|-------------------|-----------|
| `INT`            | Números inteiros |
| `VARCHAR(n)`     | Texto com tamanho variável |
| `CHAR(n)`        | Texto com tamanho fixo |
| `DECIMAL(p,s)`   | Números decimais |
| `DATETIME`       | Data e hora |
| `BIT`            | Valores booleanos (0 ou 1) |

---

## 🔹 **CAST - Conversão de Tipos**
Converte um valor para um tipo específico.
```sql
SELECT CAST(123.45 AS INT) AS NumeroInteiro;
-- Saída: 123
```

---

## 🔹 **FORMAT - Formatação de Valores**
Usado para formatar números e datas.
```sql
SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') AS DataFormatada;
-- Saída: '10/03/2025'
```

---

## 🔹 **ROUND - Arredondamento de Valores**
Arredonda um número para um número específico de casas decimais.
```sql
SELECT ROUND(123.456, 2) AS NumeroArredondado;
-- Saída: 123.46
```

---

## 🔹 **FLOOR e CEILING - Arredondamento para baixo e para cima**
```sql
SELECT FLOOR(123.9) AS ArredondadoParaBaixo, CEILING(123.1) AS ArredondadoParaCima;
-- Saída: 123 | 124
```

---

## 🔹 **SQL_VARIANT_PROPERTY - Propriedades de Variáveis**
Retorna informações sobre um valor do tipo `sql_variant`.
```sql
DECLARE @Valor sql_variant = 123.45;
SELECT SQL_VARIANT_PROPERTY(@Valor, 'BaseType') AS Tipo;
-- Saída: 'numeric'
```

Essas são algumas das principais funções relacionadas a variáveis no SQL Server. 🚀