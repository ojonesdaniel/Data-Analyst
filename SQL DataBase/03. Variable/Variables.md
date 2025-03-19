# 📌 **Variáveis no SQL Server**

## 🔹 **O que são Variáveis no SQL?**
As variáveis no SQL Server são utilizadas para armazenar valores temporários que podem ser manipulados ao longo da execução de um script SQL.

✅ São úteis para armazenar resultados intermediários, cálculos dinâmicos e parâmetros de consulta.

---

## 🔹 **Declarando Variáveis**
Para criar uma variável, usamos `DECLARE` seguido do nome da variável e do seu tipo de dado.

📌 **Exemplo:**
```sql
DECLARE @NomeCliente VARCHAR(100);
DECLARE @Idade INT;
```

🔹 O nome da variável **sempre começa com `@`**.
🔹 O tipo de dado deve ser compatível com os valores que a variável armazenará.

---

## 🔹 **Atribuindo Valores**
Podemos atribuir valores a uma variável usando `SET` ou `SELECT`.

📌 **Exemplo com `SET`:**
```sql
SET @NomeCliente = 'João';
SET @Idade = 30;
```

📌 **Exemplo com `SELECT`:**
```sql
SELECT @Idade = Idade FROM Clientes WHERE ClienteID = 1;
```

✅ `SET` atribui um único valor à variável.
✅ `SELECT` pode ser usado para definir valores com base em uma consulta.

---

## 🔹 **Usando Variáveis em Consultas**
Podemos usar variáveis em `SELECT`, `INSERT`, `UPDATE`, `DELETE` e outros comandos SQL.

📌 **Exemplo – Filtrando resultados com uma variável:**
```sql
DECLARE @CategoriaID INT;
SET @CategoriaID = 2;

SELECT * FROM Produtos WHERE CategoriaID = @CategoriaID;
```

✅ Isso permite **flexibilidade**, pois podemos alterar o valor da variável sem modificar a estrutura da consulta.

---

## 🔹 **Variáveis de Tabela**
Além de variáveis escalares, podemos usar variáveis de **tabela** para armazenar conjuntos de dados temporários.

📌 **Exemplo:**
```sql
DECLARE @ProdutosTemp TABLE (
    ProdutoID INT,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2)
);

INSERT INTO @ProdutosTemp VALUES (1, 'Notebook', 2500.00);
SELECT * FROM @ProdutosTemp;
```

✅ As variáveis de tabela são úteis para armazenar dados temporários sem a necessidade de criar tabelas físicas no banco.

---

## 🔹 **Conversão e Formatação de Dados**
### **CAST e CONVERT**
Usados para converter tipos de dados.
```sql
DECLARE @Valor INT = 100;
SELECT CAST(@Valor AS VARCHAR(10)) AS ValorTexto;
SELECT CONVERT(VARCHAR(10), @Valor) AS ValorTexto;
```

### **FORMAT**
Usado para formatar valores de data e números.
```sql
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS DataFormatada;
SELECT FORMAT(1234.56, 'C', 'pt-BR') AS ValorFormatado;
```

### **ROUND, FLOOR e CEILING**
Usados para manipulação de números decimais.
```sql
SELECT ROUND(123.456, 2) AS Arredondado;
SELECT FLOOR(123.456) AS ArredondadoParaBaixo;
SELECT CEILING(123.456) AS ArredondadoParaCima;
```

### **SQL_VARIANT_PROPERTY**
Usado para obter informações sobre valores armazenados em variáveis do tipo `sql_variant`.
```sql
DECLARE @Variante sql_variant;
SET @Variante = 123.45;
SELECT SQL_VARIANT_PROPERTY(@Variante, 'BaseType') AS TipoBase;
```

---

## 🔹 **Conclusão**
As variáveis no SQL Server são essenciais para criar scripts dinâmicos, melhorar a legibilidade do código e evitar repetição desnecessária de valores fixos. 🚀

