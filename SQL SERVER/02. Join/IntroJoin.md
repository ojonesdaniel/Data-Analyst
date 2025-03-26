# 🔗 **JOINS no SQL e Chaves Primária & Estrangeira**

## 📌 **O que é JOIN no SQL?**
O **JOIN** é um comando SQL utilizado para combinar registros de duas ou mais tabelas com base em uma **coluna em comum**. Ele é essencial para consultas que precisam de dados espalhados entre diferentes tabelas.

## 🔍 **Tipos de JOINS**

### 🔹 **INNER JOIN**
Retorna apenas os registros que possuem correspondência em ambas as tabelas.
```sql
SELECT A.Coluna, B.Coluna
FROM TabelaA A
INNER JOIN TabelaB B 
    ON A.ID = B.ID;
```

### 🔹 **LEFT JOIN (ou LEFT OUTER JOIN)**
Retorna todos os registros da **tabela à esquerda** e os correspondentes da tabela à direita. Se não houver correspondência, retorna `NULL` nos campos da tabela direita.
```sql
SELECT A.Coluna, B.Coluna
FROM TabelaA A
LEFT JOIN TabelaB B 
    ON A.ID = B.ID;
```

### 🔹 **RIGHT JOIN (ou RIGHT OUTER JOIN)**
Retorna todos os registros da **tabela à direita** e os correspondentes da tabela à esquerda. Se não houver correspondência, retorna `NULL` nos campos da tabela esquerda.
```sql
SELECT A.Coluna, B.Coluna
FROM TabelaA A
RIGHT JOIN TabelaB B 
    ON A.ID = B.ID;
```

### 🔹 **FULL JOIN (ou FULL OUTER JOIN)**
Retorna **todos os registros** de ambas as tabelas. Se não houver correspondência, retorna `NULL` nos campos sem correspondência.
```sql
SELECT A.Coluna, B.Coluna
FROM TabelaA A
FULL JOIN TabelaB B 
    ON A.ID = B.ID;
```

### 🔹 **CROSS JOIN**
Faz o **produto cartesiano** das tabelas, combinando todos os registros de uma com todos da outra.
```sql
SELECT A.Coluna, B.Coluna
FROM TabelaA A
CROSS JOIN TabelaB B;
```

---

## 🔗 **UNION e UNION ALL**

O **UNION** é utilizado para combinar os resultados de duas ou mais consultas SQL. Ele **elimina valores duplicados** automaticamente, enquanto o **UNION ALL** mantém todos os registros, inclusive os duplicados.

✅ **Regras para usar UNION:**
- O número e a ordem das colunas devem ser os mesmos em ambas as consultas.
- Os tipos de dados das colunas correspondentes devem ser compatíveis.

📌 **Exemplo de UNION:**
```sql
SELECT Nome, Cidade FROM ClientesBrasil
UNION
SELECT Nome, Cidade FROM ClientesPortugal;
```

📌 **Exemplo de UNION ALL:**
```sql
SELECT Nome, Cidade FROM ClientesBrasil
UNION ALL
SELECT Nome, Cidade FROM ClientesPortugal;
```

- **UNION** retorna apenas valores distintos.
- **UNION ALL** retorna todos os valores, incluindo duplicatas.

---

## 🔑 **Chave Primária e Chave Estrangeira**

### **Chave Primária (Primary Key - PK)**
É um campo (ou conjunto de campos) que **identifica de forma única** cada registro em uma tabela.

✅ **Características:**
- Valores únicos
- Não pode ser `NULL`
- Cada tabela pode ter apenas **uma chave primária**

📌 **Exemplo:**
```sql
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100)
);
```

### **Chave Estrangeira (Foreign Key - FK)**
É um campo em uma tabela que **faz referência** à chave primária de outra tabela, criando um relacionamento entre elas.

✅ **Características:**
- Garante a integridade referencial
- Permite conexões entre tabelas
- Pode conter valores repetidos ou `NULL` (dependendo da configuração)

📌 **Exemplo:**
```sql
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
```

Neste exemplo:
- `ClienteID` na tabela **Clientes** é a **chave primária**
- `ClienteID` na tabela **Pedidos** é uma **chave estrangeira**, conectando ambas as tabelas

---

## 🔗 **JOIN + GROUP BY**

O **JOIN** pode ser combinado com o **GROUP BY** para analisar dados agrupados entre tabelas relacionadas.

### 📌 **Quando Usar?**
Quando queremos agrupar e agregar informações que estão distribuídas entre múltiplas tabelas.

📌 **Exemplo – Contando Pedidos por Cliente:**
```sql
SELECT Clientes.Nome, COUNT(Pedidos.PedidoID) AS TotalPedidos
FROM Clientes
INNER JOIN Pedidos 
    ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome;
```
✅ O `JOIN` combina as tabelas `Clientes` e `Pedidos`.
✅ O `GROUP BY` agrupa os pedidos por cliente.
✅ O `COUNT(Pedidos.PedidoID)` conta quantos pedidos cada cliente fez.

📌 **Exemplo – Somando o Valor Total de Vendas por Categoria:**
```sql
SELECT Categorias.Nome, SUM(Produtos.Preco * PedidosItens.Quantidade) AS TotalVendas
FROM Categorias
INNER JOIN Produtos 
    ON Categorias.CategoriaID = Produtos.CategoriaID
        INNER JOIN PedidosItens 
            ON Produtos.ProdutoID = PedidosItens.ProdutoID
GROUP BY Categorias.Nome;
```
✅ O `SUM()` calcula o total de vendas por categoria.
✅ O `JOIN` permite acessar dados de diferentes tabelas.
✅ O `GROUP BY` agrupa os resultados por categoria.

O uso de **JOIN + GROUP BY** é essencial para relatórios e análises em SQL! 🚀

