# 📊 Introdução aos KPIs no Power BI

Os **Key Performance Indicators (KPIs)** são métricas utilizadas para medir o desempenho de um determinado objetivo dentro de uma organização. No Power BI, os KPIs são construídos a partir de **medidas DAX**, permitindo o acompanhamento visual e analítico dos dados.

---

## 🎯 **Componentes de um KPI**
- **Valor Atual**: Representa a métrica principal a ser acompanhada (exemplo: faturamento atual).
- **Meta (Target)**: Define um objetivo a ser alcançado (exemplo: meta de vendas do mês).
- **Status/Indicador**: Indica se a métrica está dentro da meta, abaixo ou acima.
- **Tendência**: Mostra a evolução do KPI ao longo do tempo.

---

## 🔢 **Criando um KPI no Power BI**

### 1️⃣ Criando uma Medida para o Valor Atual:
```DAX
TotalVendas = SUM(Tabela[Vendas])
```

### 2️⃣ Criando uma Medida para a Meta:
```DAX
MetaVendas = 50000  -- Meta fixa para o período
```

### 3️⃣ Criando um Indicador de Desempenho:
```DAX
Desempenho =
IF(
    [TotalVendas] >= [MetaVendas],
    "🟢 Atingiu a Meta",
    "🔴 Abaixo da Meta"
)
```

---

## 📈 **Criando um KPI Visual no Power BI**
1. No Power BI, vá até a aba **Visualizações**.
2. Selecione o **gráfico de KPI**.
3. Arraste a medida **TotalVendas** para o campo **Valor**.
4. Arraste a medida **MetaVendas** para o campo **Meta**.
5. Opcionalmente, adicione uma **dimensão temporal** para mostrar a evolução.

---

## 📊 **Funções DAX úteis para KPIs**

### 📍 **Medidas de Variação**
```DAX
Variacao = [TotalVendas] - [MetaVendas]
VariacaoPercentual = DIVIDE([Variacao], [MetaVendas], 0)
```

### 📍 **Ícones Visuais para Status**
```DAX
StatusKPI =
SWITCH(
    TRUE(),
    [TotalVendas] >= [MetaVendas], "🟢 Bom",
    [TotalVendas] >= [MetaVendas] * 0.8, "🟡 Atenção",
    "🔴 Ruim"
)
```

---

Os KPIs são essenciais para a análise de dados e tomada de decisões estratégicas. Utilize-os para visualizar rapidamente o desempenho de suas métricas no Power BI! 🚀

