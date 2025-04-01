# 📌 Sub-Queries no SQL

## 🔹 O que são Sub-Queries?
Sub-queries (ou subconsultas) são consultas SQL aninhadas dentro de outra consulta. Elas permitem realizar buscas dinâmicas e servem para filtrar, calcular ou manipular dados antes de serem utilizados na consulta principal.

---

## 🔹 Tipos de Sub-Queries

### 📌 **1. Sub-Query em Cláusula WHERE**
Usada para filtrar resultados com base nos valores retornados pela subconsulta.

```sql
SELECT 
    Nome, 
    Salario 
FROM 
    Funcionarios 
WHERE Salario > (SELECT AVG(Salario) FROM Funcionarios);
```
📌 *Retorna os funcionários que ganham acima da média salarial.*

---

### 📌 **2. Sub-Query em Cláusula FROM**
Usada para criar tabelas temporárias dentro da consulta principal.

```sql
SELECT 
    Temp.Departamento, 
    AVG(Temp.Salario) AS MediaSalarial 
FROM 
    (SELECT Departamento, Salario FROM Funcionarios) AS Temp
GROUP BY Temp.Departamento;
```
📌 *Agrupa salários por departamento usando uma subconsulta.*

---

### 📌 **3. Sub-Query em Cláusula SELECT**
Usada para calcular valores em tempo de execução.

```sql
SELECT 
    Nome, 
    (SELECT MAX(Salario) FROM Funcionarios) AS MaiorSalario 
FROM 
    Funcionarios;
```
📌 *Retorna todos os funcionários e exibe o maior salário da tabela.*

---

### 📌 **4. Sub-Query Correlacionada**
Executada linha por linha para cada registro da consulta principal.

```sql
SELECT 
    Nome, 
    Salario 
FROM 
    Funcionarios F1 
WHERE Salario > (SELECT AVG(Salario) FROM Funcionarios F2 WHERE F1.Departamento = F2.Departamento);
```
📌 *Retorna os funcionários que ganham acima da média salarial dentro de seus respectivos departamentos.*

---

## 🎯 **Regras Importantes**
✅ Uma sub-query pode retornar um único valor (scalar) ou um conjunto de dados.
✅ Sub-queries dentro do `WHERE` devem retornar um valor único para comparativos como `=`.
✅ Sub-queries podem ser aninhadas dentro de `SELECT`, `FROM`, e `WHERE`.
✅ O uso excessivo pode impactar a performance do banco de dados.

---

## 🚀 **Conclusão**
As sub-queries são ferramentas poderosas que permitem criar consultas mais dinâmicas e flexíveis. Contudo, seu uso deve ser planejado para evitar impactos no desempenho do banco de dados.