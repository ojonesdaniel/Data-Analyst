# 🖥️ Processo de Criação de um Dashboard no Power BI

Este documento descreve o passo a passo para criar um dashboard no Power BI, desde a importação dos dados até a criação do relatório final.

---

## 1️⃣ **Importação dos Dados**

Antes de criar qualquer dashboard, é necessário importar os dados para o Power BI. Existem diversas fontes de dados suportadas:

### **Principais fontes de dados**
- **Arquivos locais**: Excel (.xlsx), CSV (.csv), JSON, XML, entre outros.
- **Banco de Dados**: SQL Server, MySQL, PostgreSQL, Oracle, entre outros.
- **Serviços Online**: SharePoint, Google Analytics, Salesforce, entre outros.
- **APIs e Conectores Web**: Extração de dados via API REST e outras fontes externas.

### **Como importar dados?**
1. No Power BI Desktop, clique em **Obter Dados**.
2. Escolha a fonte desejada.
3. Configure a conexão e selecione as tabelas desejadas.
4. Clique em **Carregar** (ou em **Transformar Dados**, caso precise tratar os dados antes da importação).

---

## 2️⃣ **Tratamento e Transformação de Dados**

Após importar os dados, é comum precisar fazer ajustes e transformações para preparar as informações para análise.

### **Principais tarefas de tratamento**
- **Remover colunas desnecessárias** para melhorar a performance.
- **Corrigir tipos de dados** (exemplo: converter texto para data, números, etc.).
- **Tratar valores nulos** para evitar erros em cálculos e visualizações.
- **Criar colunas calculadas** usando o DAX (exemplo: calcular idade com base na data de nascimento).
- **Criar medidas DAX** para agregacões dinâmicas.
- **Mesclar ou acrescentar consultas** para combinar tabelas e fontes de dados.

### **Como transformar dados?**
1. No Power BI Desktop, clique em **Transformar Dados**.
2. O Power Query será aberto para edição.
3. Realize as transformações necessárias.
4. Clique em **Fechar & Aplicar**.

---

## 3️⃣ **Criação do Modelo de Dados**

Depois de tratar os dados, é necessário estruturar o modelo de dados para que os relatórios sejam eficientes.

### **Principais conceitos do modelo de dados**
- **Relacionamentos entre tabelas**: Definir chaves primárias e estrangeiras.
- **Star Schema (Esquema Estrela)**: Separar tabelas de fatos (dados numéricos) e tabelas dimensão (categorias).
- **Uso de Medidas no DAX**: Criar KPIs e métricas dinâmicas.

### **Como configurar o modelo de dados?**
1. Clique na aba **Modelo** no Power BI Desktop.
2. Arraste e conecte as tabelas criando relacionamentos.
3. Utilize medidas para melhorar os cálculos e otimizar as consultas.

---

## 4️⃣ **Criação do Relatório e Dashboard**

Com os dados tratados e o modelo pronto, é hora de construir a visualização dos dados.

### **Elementos principais de um dashboard**
- **Gráficos** (barras, linhas, pizza, área, etc.).
- **Tabelas e matrizes**.
- **Cartões de KPIs**.
- **Segmentação de dados (Filtros)**.
- **Slicers e botões interativos**.

### **Como criar um dashboard?**
1. No Power BI Desktop, acesse a aba **Relatório**.
2. Arraste os visuais desejados para a tela.
3. Configure os filtros e interações.
4. Formate os visuais para melhorar a apresentação.

---

## 5️⃣ **Publicação e Compartilhamento**

Depois de criar o dashboard, ele pode ser publicado no Power BI Service para compartilhamento.

### **Passos para publicar**
1. Clique em **Publicar** no Power BI Desktop.
2. Escolha um workspace no Power BI Service.
3. No Power BI Service, configure permissões de acesso.
4. Compartilhe o link com os usuários interessados.

> **OBS:** Para compartilhar dashboards interativos, pode ser necessário ter uma licença Power BI Pro.

---

## ✅ **Conclusão**

Criar um dashboard eficaz no Power BI envolve diversas etapas, desde a importação e tratamento dos dados até a criação do relatório final. Seguindo esse fluxo, é possível transformar dados brutos em informações valiosas para tomada de decisão.
