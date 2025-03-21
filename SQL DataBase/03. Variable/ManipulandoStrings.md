# 📌 **Funções de Formatação de Strings e Datas no SQL Server**

## 🔹 **O que são Funções de Formatação de Strings?**
As funções de formatação de strings no SQL Server permitem manipular e modificar textos dentro das consultas, possibilitando ajustes como concatenação, remoção de espaços, substituição de caracteres e alteração de maiúsculas e minúsculas.

---

## 🔹 **Principais Funções de Strings**

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

### **🔹 CHARINDEX**
Retorna a posição de uma substring dentro de outra string. Se não for encontrada, retorna 0.
```sql
SELECT CHARINDEX('Dados', 'Banco de Dados') AS Posicao;
-- Retorno: 10
```

---

## 🔹 **Funções de Manipulação de Datas**

### **1️⃣ GETDATE**
Retorna a data e hora atuais do servidor.
```sql
SELECT GETDATE() AS DataAtual;
-- Retorno: '2025-03-19 14:30:00.000'
```

### **2️⃣ CURRENT_TIMESTAMP**
Equivalente ao `GETDATE()`, retorna a data e hora do sistema.
```sql
SELECT CURRENT_TIMESTAMP AS DataAtual;
-- Retorno: '2025-03-19 14:30:00.000'
```

### **3️⃣ DATEADD**
Adiciona ou subtrai um intervalo de tempo a uma data.
```sql
SELECT DATEADD(DAY, 10, GETDATE()) AS DataFutura;
-- Retorno: '2025-03-29 14:30:00.000'
```

### **4️⃣ DATEDIFF**
Retorna a diferença entre duas datas em um determinado intervalo.
```sql
SELECT DATEDIFF(DAY, '2025-03-01', '2025-03-19') AS DiferencaDias;
-- Retorno: 18
```

### **5️⃣ DATEPART**
Extrai uma parte específica de uma data.
```sql
SELECT DATEPART(YEAR, GETDATE()) AS AnoAtual;
-- Retorno: 2025
```

### **6️⃣ DATENAME**
Retorna o nome da parte especificada de uma data.
```sql
SELECT DATENAME(MONTH, GETDATE()) AS NomeMes;
-- Retorno: 'Março'
```

### **7️⃣ EOMONTH**
Retorna o último dia do mês de uma data especificada.
```sql
SELECT EOMONTH(GETDATE()) AS UltimoDiaMes;
-- Retorno: '2025-03-31'
```

### **8️⃣ SWITCHOFFSET**
Altera o fuso horário de um valor de data/hora.
```sql
SELECT SWITCHOFFSET(SYSDATETIMEOFFSET(), '-03:00') AS HorarioBrasilia;
```

### **9️⃣ TODATETIMEOFFSET**
Define explicitamente um deslocamento de fuso horário.
```sql
SELECT TODATETIMEOFFSET(GETDATE(), '-03:00') AS DataComFuso;
```

---

## 🔹 **Conclusão**
As funções de formatação de strings e datas no SQL Server são essenciais para manipulação de textos e controle de datas em consultas. 🚀

