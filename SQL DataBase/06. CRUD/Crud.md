# 📌 CRUD no SQL Server

CRUD é um acrônimo para **Create (Criar), Read (Ler), Update (Atualizar) e Delete (Excluir)**. Esses são os quatro principais comandos utilizados para manipulação de dados em bancos de dados relacionais.

---

## 🔹 **Gerenciamento de Banco de Dados**

### **CREATE DATABASE - Criar um Banco de Dados**
Usado para criar um novo banco de dados.
```sql
CREATE DATABASE MeuBanco;
```

### **ALTER DATABASE - Alterar um Banco de Dados**
Permite modificar algumas configurações do banco de dados.
```sql
ALTER DATABASE MeuBanco SET READ_ONLY;
```

### **DROP DATABASE - Excluir um Banco de Dados**
Remove um banco de dados permanentemente.
```sql
DROP DATABASE MeuBanco;
```

---

## 🔹 **Gerenciamento de Tabelas**

### **CREATE TABLE - Criar uma Tabela**
Cria uma nova tabela dentro do banco de dados.
```sql
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);
```

### **ALTER TABLE - Alterar uma Tabela**
Adicionar uma nova coluna:
```sql
ALTER TABLE Clientes 
ADD Endereco VARCHAR(255);
```
Modificar o tipo de uma coluna:
```sql
ALTER TABLE Clientes 
ALTER COLUMN Telefone VARCHAR(30);
```
Remover uma coluna:
```sql
ALTER TABLE Clientes 
DROP COLUMN Endereco;
```

### **DROP TABLE - Excluir uma Tabela**
```sql
DROP TABLE Clientes;
```

---

## 🔹 **Manipulação de Dados**

### **INSERT - Inserção de Dados**
Usado para inserir novos registros em uma tabela.
```sql
INSERT INTO Clientes (Nome, Email, Telefone) 
VALUES ('João Silva', 'joao@email.com', '11987654321');
```

### **INSERT INTO SELECT - Copiar Dados de Outra Tabela**
```sql
INSERT INTO ClientesBackup (Nome, Email, Telefone)
SELECT Nome, Email, Telefone FROM Clientes;
```

### **INSERT INTO com Colunas Especificadas**
```sql
INSERT INTO Clientes (Nome, Email) 
VALUES ('Maria Oliveira', 'maria@email.com');
```

### **UPDATE - Atualização de Dados**
Usado para modificar registros existentes.
```sql
UPDATE Clientes 
SET Email = 'novoemail@email.com' 
WHERE Nome = 'João Silva';
```

### **DELETE - Remoção de Dados**
Usado para excluir registros.
```sql
DELETE FROM Clientes WHERE Nome = 'João Silva';
```

Esses são os principais comandos CRUD no SQL Server. 🚀

