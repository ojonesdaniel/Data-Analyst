# 📌 CRUD no SQL Server

O CRUD (Create, Read, Update, Delete) representa as quatro operações básicas realizadas em bancos de dados relacionais. No SQL Server, essas operações são implementadas por meio de comandos SQL específicos.

---

## 🔹 **CREATE (Inserir Dados)**
Utilizado para inserir novos registros em uma tabela.

### **Exemplo:**
```sql
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES ('João Silva', 'joao@email.com', '11999999999');
```

---

## 🔹 **READ (Consultar Dados)**
Usado para recuperar informações do banco de dados.

### **Exemplo:**
```sql
SELECT * FROM Clientes;
```

Filtrando dados:
```sql
SELECT Nome, Email FROM Clientes WHERE Nome = 'João Silva';
```

---

## 🔹 **UPDATE (Atualizar Dados)**
Utilizado para modificar registros existentes.

### **Exemplo:**
```sql
UPDATE Clientes
SET Email = 'joaosilva@email.com'
WHERE Nome = 'João Silva';
```

---

## 🔹 **DELETE (Excluir Dados)**
Usado para remover registros do banco de dados.

### **Exemplo:**
```sql
DELETE FROM Clientes WHERE Nome = 'João Silva';
```

⚠ **Atenção!** Se o `WHERE` for omitido, todos os registros da tabela serão excluídos.

---

## 🔹 **Conclusão**
O CRUD é essencial para gerenciar dados em bancos relacionais. Com os comandos `INSERT`, `SELECT`, `UPDATE` e `DELETE`, é possível realizar todas as operações básicas de manipulação de dados no SQL Server.

