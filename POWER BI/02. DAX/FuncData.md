# 📅 Funções de Data no DAX

O DAX (Data Analysis Expressions), utilizado no Power BI, possui diversas funções para manipulação e análise de datas. Este documento apresenta as principais funções de data, agrupadas por categoria para facilitar a consulta.

---

## 🔁 Funções de Inteligência de Tempo

### `TOTALYTD`, `TOTALQTD`, `TOTALMTD`
Calculam somatórios desde o início do período até a data atual.
```dax
TOTALYTD([Métrica], Calendario[Data])
TOTALMTD([Métrica], Calendario[Data])
TOTALQTD([Métrica], Calendario[Data])
```

### `DATESYTD`, `DATESQTD`, `DATESMTD`
Retornam uma tabela de datas para o período desejado.
```dax
DATESYTD(Calendario[Data])
DATESMTD(Calendario[Data])
DATESQTD(Calendario[Data])
```

---

## 📆 Funções de Período Relativo

### `DATEADD`
Desloca o período de data (para comparar com períodos anteriores).
```dax
DATEADD(Calendario[Data], -1, YEAR)
```

### `PARALLELPERIOD`
Retorna datas paralelas (mesmo período em outro ano/mês).
```dax
PARALLELPERIOD(Calendario[Data], -1, YEAR)
```

### `SAMEPERIODLASTYEAR`
Retorna o mesmo período no ano anterior.
```dax
SAMEPERIODLASTYEAR(Calendario[Data])
```

### `PREVIOUSYEAR`, `PREVIOUSMONTH`, `PREVIOUSDAY`
Retorna o período anterior de uma data.
```dax
PREVIOUSYEAR(Calendario[Data])
PREVIOUSMONTH(Calendario[Data])
PREVIOUSDAY(Calendario[Data])
```

---

## 📚 Funções de Intervalo de Data

### `DATESBETWEEN`
Retorna as datas entre duas datas específicas.
```dax
DATESBETWEEN(Calendario[Data], DATE(2024,1,1), DATE(2024,12,31))
```

### `DATESINPERIOD`
Retorna uma janela de tempo relativa a uma data.
```dax
DATESINPERIOD(Calendario[Data], TODAY(), -30, DAY)
```

---

## ⏱️ Funções de Construção e Manipulação de Datas

### `DATE`
Cria uma data com ano, mês e dia.
```dax
DATE(2025, 4, 22)
```

### `TODAY`
Retorna a data atual.
```dax
TODAY()
```

### `NOW`
Retorna a data e hora atual.
```dax
NOW()
```

### `YEAR`, `MONTH`, `DAY`
Extrai partes específicas da data.
```dax
YEAR(Dados[Data])
MONTH(Dados[Data])
DAY(Dados[Data])
```

### `WEEKNUM`
Retorna o número da semana no ano.
```dax
WEEKNUM(Dados[Data])
```

---

## 🛠️ Funções Úteis com Relacionamentos

### `USERELATIONSHIP`
Ativa um relacionamento inativo entre tabelas.
```dax
USERELATIONSHIP(Dados[Data de Abertura], Calendario[Data])
```

### `TREATAS`
Aplica uma coluna como se fosse outra (útil em múltiplos relacionamentos de data).
```dax
TREATAS(VALUES(Calendario[Data]), Dados[Data de Fechamento])
```

---

## ℹ️ Dica Final

Para que funções de data funcionem corretamente, sempre use uma **tabela de datas completa (Calendário)** com pelo menos uma coluna contínua de datas (`Calendario[Data]`) e marque ela como **tabela de datas** no Power BI.

---

📌 *Atualizado em: 22 de abril de 2025*

