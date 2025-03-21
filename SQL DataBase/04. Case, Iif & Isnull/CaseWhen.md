# 📌 **Funções Condicionais no SQL Server**

## 🔹 **CASE WHEN... ELSE**
A estrutura `CASE` permite avaliar condições e retornar valores com base nessas condições.

```sql
SELECT Nome, Idade,
    CASE 
        WHEN Idade < 18 THEN 'Menor de idade'
        WHEN Idade BETWEEN 18 AND 60 THEN 'Adulto'
        ELSE 'Idoso'
    END AS FaixaEtaria
FROM Pessoas;
```
**Saída esperada:**
```
| Nome  | Idade | FaixaEtaria     |
|-------|-------|---------------|
| João  | 17    | Menor de idade |
| Maria | 25    | Adulto         |
| José  | 65    | Idoso          |
```

### **CASE com operadores AND e OR**
```sql
SELECT Nome, Cargo, Salario,
    CASE 
        WHEN Cargo = 'Desenvolvedor' AND Salario > 5000 THEN 'Sênior'
        WHEN Cargo = 'Desenvolvedor' AND Salario <= 5000 THEN 'Júnior'
        WHEN Cargo = 'Gerente' OR Cargo = 'Diretor' THEN 'Liderança'
        ELSE 'Outro'
    END AS Categoria
FROM Funcionarios;
```
**Saída esperada:**
```
| Nome  | Cargo         | Salario | Categoria   |
|-------|--------------|---------|------------|
| Ana   | Desenvolvedor| 6000    | Sênior     |
| Pedro | Desenvolvedor| 4500    | Júnior     |
| Carla | Gerente      | 8000    | Liderança  |
```

---

## 🔹 **IIF**
A função `IIF` é uma forma mais simples de escrever um `CASE` para apenas duas condições.

```sql
SELECT Nome, Salario,
    IIF(Salario > 5000, 'Alto', 'Baixo') AS ClassificacaoSalario
FROM Funcionarios;
```
**Saída esperada:**
```
| Nome  | Salario | ClassificacaoSalario |
|-------|---------|----------------------|
| João  | 6000    | Alto                 |
| Maria | 4000    | Baixo                |
```

---

## 🔹 **ISNULL**
A função `ISNULL` substitui valores `NULL` por um valor padrão.

```sql
SELECT Nome, ISNULL(Telefone, 'Sem telefone cadastrado') AS Telefone
FROM Clientes;
```
**Saída esperada:**
```
| Nome  | Telefone               |
|-------|------------------------|
| Lucas | (31) 99999-9999        |
| Ana   | Sem telefone cadastrado|
```

---

## 🔹 **Conclusão**
Essas funções são essenciais para o tratamento de valores e condições em consultas SQL. 🚀

