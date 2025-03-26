# 📌 CRUD no SQL Server

CRUD é um acrônimo para **Create (Criar), Read (Ler), Update (Atualizar) e Delete (Excluir)**. Esses são os quatro principais comandos utilizados para manipulação de dados em bancos de dados relacionais.

---

## 🔹 **CREATE DATABASE - Criar um Banco de Dados**
Usado para criar um novo banco de dados.
```sql
CREATE DATABASE MeuBanco;
```

---

## 🔹 **DROP DATABASE - Excluir um Banco de Dados**
Remove um banco de dados permanentemente.
```sql
DROP DATABASE MeuBanco;
```

---

## 🔹 **CREATE TABLE - Criar uma Tabela**
Cria uma nova tabela dentro do banco de dados.
```sql
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);
```

---

## 🔹 **CREATE - Inserção de Dados**
Usado para inserir novos registros em uma tabela.
```sql
INSERT INTO Clientes (Nome, Email, Telefone) 
VALUES ('João Silva', 'joao@email.com', '11987654321');
```

---

## 🔹 **READ - Consulta de Dados**
Usado para recuperar informações do banco de dados.
```sql
SELECT * FROM Clientes;
```

Com filtros:
```sql
SELECT Nome, Email FROM Clientes WHERE Telefone LIKE '119%';
```

---

## 🔹 **UPDATE - Atualização de Dados**
Usado para modificar registros existentes.
```sql
UPDATE Clientes 
SET Email = 'novoemail@email.com' 
WHERE Nome = 'João Silva';
```

---

## 🔹 **DELETE - Remoção de Dados**
Usado para excluir registros.
```sql
DELETE FROM Clientes WHERE Nome = 'João Silva';
```

---

## 🔹 **INSERT INTO SELECT**
Permite copiar dados de uma tabela para outra.
```sql
INSERT INTO ClientesBackup (Nome, Email, Telefone)
SELECT Nome, Email, Telefone FROM Clientes;
```

---

## 🔹 **INSERT INTO com colunas especificadas**
Caso queira inserir dados em colunas específicas:
```sql
INSERT INTO Clientes (Nome, Email) 
VALUES ('Maria Oliveira', 'maria@email.com');
```

Esses são os principais comandos CRUD no SQL Server. 🚀

