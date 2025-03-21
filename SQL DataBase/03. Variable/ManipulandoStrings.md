# 📌 **Funções de Formatação de Strings no SQL Server**

## 🔹 **O que são Funções de Formatação de Strings?**
As funções de formatação de strings no SQL Server permitem manipular e modificar textos dentro das consultas, possibilitando ajustes como concatenação, remoção de espaços, substituição de caracteres e alteração de maiúsculas e minúsculas.

---

## 🔹 **Principais Funções**

### **1️⃣ UPPER e LOWER**
Usadas para converter o texto para maiúsculas ou minúsculas.
```sql
SELECT UPPER('sql server') AS Maiusculas;
-- Retorno: 'SQL SERVER'

SELECT LOWER('SQL SERVER') AS Minusculas;
-- Retorno: 'sql server'
```

### **2️⃣ LEN**
Retorna o número de caracteres de uma string (sem contar espaços finais).
```sql
SELECT LEN('Banco de Dados') AS Tamanho;
-- Retorno: 14
```

### **3️⃣ DATALENGTH**
Retorna o número de bytes usados para armazenar um valor.
```sql
SELECT DATALENGTH('SQL Server') AS TamanhoEmBytes;
-- Retorno: 10 (considerando VARCHAR, sem caracteres Unicode)
```

### **4️⃣ LTRIM e RTRIM**
Removem espaços em branco à esquerda (`LTRIM`) ou à direita (`RTRIM`).
```sql
SELECT LTRIM('  SQL Server') AS SemEspacoEsquerda;
-- Retorno: 'SQL Server'

SELECT RTRIM('SQL Server  ') AS SemEspacoDireita;
-- Retorno: 'SQL Server'
```

### **5️⃣ TRIM** *(SQL Server 2017+)*
Remove espaços em branco de ambos os lados da string.
```sql
SELECT TRIM('  SQL Server  ') AS SemEspacos;
-- Retorno: 'SQL Server'
```

### **6️⃣ LEFT e RIGHT**
Retornam os `n` primeiros ou últimos caracteres de uma string.
```sql
SELECT LEFT('SQL Server', 3) AS Primeiros3;
-- Retorno: 'SQL'

SELECT RIGHT('SQL Server', 6) AS Ultimos6;
-- Retorno: 'Server'
```

### **7️⃣ SUBSTRING**
Extrai parte de uma string com base na posição e comprimento informados.
```sql
SELECT SUBSTRING('SQL Server', 5, 6) AS ParteString;
-- Retorno: 'Server'
```

### **8️⃣ REPLACE**
Substitui todas as ocorrências de um texto dentro de uma string.
```sql
SELECT REPLACE('Banco de Dados', 'Dados', 'Informacoes') AS TextoModificado;
-- Retorno: 'Banco de Informacoes'
```

### **9️⃣ STUFF**
Substitui parte de uma string por outra, a partir de uma determinada posição.
```sql
SELECT STUFF('Banco de Dados', 7, 2, 'XX') AS TextoModificado;
-- Retorno: 'Banco XX Dados'
```

### **🔟 FORMAT** *(SQL Server 2012+)*
Formata strings e valores numéricos de acordo com um padrão.
```sql
SELECT FORMAT(1234567, 'N', 'pt-BR') AS NumeroFormatado;
-- Retorno: '1.234.567,00'
```

### **🔹 TRANSLATE** *(SQL Server 2017+)*
Substitui vários caracteres simultaneamente dentro de uma string.
```sql
SELECT TRANSLATE('123-456-789', '123', 'ABC') AS TextoTraduzido;
-- Retorno: 'ABC-456-789'
```

---Colocar Funções de Data e Charindex

## 🔹 **Conclusão**
As funções de formatação de strings no SQL Server são essenciais para manipulação de textos, seja para padronização, limpeza de dados ou formatação específica. 🚀

