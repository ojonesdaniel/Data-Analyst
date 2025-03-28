# 📌 DAX: Medidas, Filtros e Funções Iterativas

## 🔹 **Medidas no DAX**
As medidas no DAX são cálculos dinâmicos aplicados aos dados no contexto da visualização. Diferente de colunas calculadas, as medidas são avaliadas no momento da consulta.

### 📊 **Principais Funções para Medidas**
```DAX
SUM(Tabela[Coluna]) -- Soma os valores da coluna especificada
AVERAGE(Tabela[Coluna]) -- Calcula a média
MIN(Tabela[Coluna]) -- Retorna o menor valor
MAX(Tabela[Coluna]) -- Retorna o maior valor
COUNT(Tabela[Coluna]) -- Conta os registros não vazios
DISTINCTCOUNT(Tabela[Coluna]) -- Conta os valores distintos
```

---

## 🔍 **Funções de Filtro no DAX**
As funções de filtro permitem modificar o contexto da avaliação das medidas, selecionando subconjuntos específicos de dados.

### 🛠 **Principais Funções de Filtro**
```DAX
FILTER(Tabela, Condicao) -- Retorna uma tabela filtrada com base na condição
ALL(Tabela[Coluna]) -- Remove filtros da coluna especificada
ALLSELECTED(Tabela[Coluna]) -- Mantém filtros aplicados no relatório
KEEPFILTERS(Expressão) -- Mantém filtros existentes ao aplicar novos
REMOVEFILTERS(Tabela[Coluna]) -- Remove filtros da tabela ou coluna
CALCULATE(Expressão, Filtro1, Filtro2) -- Modifica o contexto de cálculo aplicando filtros
```

---

## 🔄 **Funções Iterativas no DAX**
As funções iterativas avaliam expressões linha por linha dentro de uma tabela e retornam um resultado agregado.

### 🔢 **Principais Funções Iterativas**
```DAX
SUMX(Tabela, Expressao) -- Soma os valores calculados para cada linha da tabela
AVERAGEX(Tabela, Expressao) -- Calcula a média dos valores gerados por uma expressão
MINX(Tabela, Expressao) -- Retorna o menor valor resultante da expressão
MAXX(Tabela, Expressao) -- Retorna o maior valor resultante da expressão
COUNTX(Tabela, Expressao) -- Conta os valores não vazios da expressão
RANKX(Tabela, Expressao, [, Ordem]) -- Classifica os valores da expressão em ordem crescente ou decrescente
```

Essas funções são essenciais para análises mais avançadas no Power BI, permitindo cálculos mais dinâmicos e detalhados! 🚀

