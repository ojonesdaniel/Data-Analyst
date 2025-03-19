## **Funções Agregadas**

### **SUM (Soma de valores)**
```sql
SELECT SUM(Preco) AS TotalVendas FROM Pedidos;
```
- Retorna a soma dos valores de uma coluna numérica.

### **COUNT (Conta o número de registros)**
```sql
SELECT COUNT(*) AS TotalClientes FROM Clientes;
SELECT COUNT(DISTINCT Categoria) AS TotalCategorias FROM Produtos;
```
- `COUNT(*)` conta todos os registros.
- `COUNT(DISTINCT Coluna)` conta apenas valores únicos da coluna.

### **MIN e MAX (Valor mínimo e máximo)**
```sql
SELECT MIN(Preco) AS MenorPreco FROM Produtos;
SELECT MAX(Preco) AS MaiorPreco FROM Produtos;
```
- `MIN(Coluna)` retorna o menor valor da coluna.
- `MAX(Coluna)` retorna o maior valor da coluna.

### **AVG (Média dos valores)**
```sql
SELECT AVG(Preco) AS MediaPreco FROM Produtos;
```
- Retorna a média dos valores da coluna especificada.

## **Dicas:**
- Você pode selecionar e executar apenas uma parte do código pressionando **F5**.
- Mantenha a **identação** organizada para melhorar a leitura do código.