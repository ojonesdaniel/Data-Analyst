# 📌 Introdução ao DAX (Data Analysis Expressions)

DAX (**Data Analysis Expressions**) é a linguagem de fórmulas utilizada no Power BI, Analysis Services e Power Pivot no Excel. Ele permite criar cálculos avançados, colunas calculadas, medidas e KPIs dentro do modelo de dados.

---

## 📊 **Principais Funções do DAX**

### 🔢 **Funções Matemáticas e Estatísticas**
Essas funções são usadas para realizar cálculos matemáticos e estatísticos:
```DAX
SUM(Tabela[Coluna]) -- Soma os valores da coluna especificada
AVERAGE(Tabela[Coluna]) -- Calcula a média
MIN(Tabela[Coluna]) -- Retorna o menor valor
MAX(Tabela[Coluna]) -- Retorna o maior valor
COUNT(Tabela[Coluna]) -- Conta os registros não vazios
DISTINCTCOUNT(Tabela[Coluna]) -- Conta os valores distintos
```

---

### 📅 **Funções de Data e Hora**
Permitem manipular datas e realizar cálculos temporais:
```DAX
TODAY() -- Retorna a data atual
NOW() -- Retorna a data e hora atual
YEAR(Tabela[Data]) -- Retorna o ano
MONTH(Tabela[Data]) -- Retorna o mês
DAY(Tabela[Data]) -- Retorna o dia
DATE(2024,3,20) -- Cria uma data específica
DATEDIFF(Tabela[DataInicio], Tabela[DataFim], DAY) -- Diferença entre datas
EOMONTH(Tabela[Data], N) -- Retorna o último dia do mês N meses à frente/atrás
```

---

### 🔠 **Funções de Texto**
Usadas para manipular strings e formatar textos:
```DAX
LEFT(Tabela[Coluna], N) -- Retorna os primeiros N caracteres
RIGHT(Tabela[Coluna], N) -- Retorna os últimos N caracteres
MID(Tabela[Coluna], Início, N) -- Retorna N caracteres a partir de uma posição específica
LEN(Tabela[Coluna]) -- Retorna o número de caracteres
SEARCH("palavra", Tabela[Coluna]) -- Retorna a posição da palavra na string
SUBSTITUTE(Tabela[Coluna], "antigo", "novo") -- Substitui valores dentro da string
CONCATENATE(Tabela[Coluna1], Tabela[Coluna2]) -- Junta duas strings
```

---

### 🔗 **Relacionamento entre Tabelas**
Essas funções permitem acessar dados de tabelas relacionadas:
```DAX
RELATED(TabelaRelacionada[Coluna]) -- Retorna um valor de uma tabela relacionada
RELATEDTABLE(TabelaRelacionada) -- Retorna uma tabela relacionada com base na relação existente
```

---

### 🔎 **Fórmulas Condicionais**
Permitem criar expressões que avaliam condições:
```DAX
IF(Condicao, ValorSeVerdadeiro, ValorSeFalso) -- Estrutura condicional
SWITCH(Expressao, Valor1, Retorno1, Valor2, Retorno2, ValorPadrao) -- Alternativa ao IF para múltiplas condições
```

---

### ✅ **Operadores Lógicos e Comparação**
Usados para realizar operações lógicas e comparações:
```DAX
&&  -- AND lógico (E)
||  -- OR lógico (OU)
!   -- NOT lógico (NÃO)
&   -- Concatenação de strings
>	-- Maior que
<	-- Menor que
>=	-- Maior ou igual
<=	-- Menor ou igual
=   -- Igual a
<>  -- Diferente de
```

---

Essas são algumas das funções essenciais do DAX que podem ser utilizadas no Power BI para criar relatórios avançados e dinâmicos. 🚀

