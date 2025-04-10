# Comandos Básicos de SQL

## **SELECT e FROM**
```sql
SELECT
    * 
FROM 
    SuaTabela;
```
### **Explicação:**
- O comando **SELECT** busca dados da tabela indicada.
- O **asterisco (*)** seleciona todas as colunas da tabela.
- É possível substituir o `*` pelos nomes das colunas desejadas para otimizar a consulta.

### **Variações do SELECT:**
- `SELECT TOP (n)` → Retorna as primeiras **n** linhas da tabela.
- `SELECT DISTINCT` → Retorna valores **únicos** da coluna especificada.

## **Comentários em SQL**
```sql
--- Comentário de uma linha

/* 
   Comentário de múltiplas linhas
   SELECT * FROM SuaTabela;
*/
```
### **Explicação:**
- **`---`** comenta uma única linha.
- **`/* ... */`** permite comentar um bloco inteiro de código.

## **Renomeando Colunas (Alias)**
```sql
SELECT
    ProductName AS 'Nome do Produto', 
    BrandName AS 'Marca',
    ColorName AS 'Cor'
FROM
    DimProduct;
```
### **Explicação:**
- O **AS** permite renomear colunas no resultado da consulta.
- O novo nome da coluna deve estar entre **aspas simples** ou **colchetes (`[]`)** caso tenha espaços.

## **Dicas:**
- Você pode selecionar e executar apenas uma parte do código pressionando **F5**.
- Mantenha a **identação** organizada para melhorar a leitura do código.

---
