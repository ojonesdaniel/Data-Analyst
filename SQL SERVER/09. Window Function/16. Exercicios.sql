/*EXERCÍCIOS WINDOW FUNCTIONS
Para resolver os exercícios 1 a 4, crie uma View chamada vwProdutos, que contenha o
agrupamento das colunas BrandName, ColorName e os totais de quantidade vendida por
marca/cor e também o total de receita por marca/cor.*/
CREATE VIEW vwProdutos AS
SELECT
BrandName AS 'Marca',
ColorName AS 'Cor',
COUNT(*) AS 'Quantidade_Vendida',
ROUND(SUM(SalesAmount), 2) AS 'Receita_Total'
FROM DimProduct
INNER JOIN FactSales
ON DimProduct.ProductKey = FactSales.ProductKey
GROUP BY BrandName, ColorName

/*1. Utilize a View vwProdutos para criar uma coluna extra calculando a quantidade total vendida
dos produtos.*/


/*2. Crie mais uma coluna na consulta anterior, incluindo o total de produtos vendidos para cada
marca.
/*3. Calcule o % de participação do total de vendas de produtos por marca.
Ex: A marca A. Datum teve uma quantidade total de vendas de 199.041 de um total de 3.406.089
de vendas. Isso significa que a da marca A. Datum é 199.041/3.406.089 = 5,84%.
/*4. Crie uma consulta à View vwProdutos, selecionando as colunas Marca, Cor,
Quantidade_Vendida e também criando uma coluna extra de Rank para descobrir a posição de
cada Marca/Cor. Você deve obter o resultado abaixo. Obs: Sua consulta deve ser filtrada para
que seja mostrada apenas a marca Contoso.
/*Exercício Desafio 1.
Para responder os próximos 2 exercícios, você precisará criar uma View auxiliar. Diferente do
que foi feito anteriormente, você não terá acesso ao código dessa view antes do gabarito.
A sua view deve se chamar vwHistoricoLojas e deve conter um histórico com a quantidade de
lojas abertas a cada Ano/Mês. Os desafios são:
(1) Criar uma coluna de ID para essa View
(2) Relacionar as tabelas DimDate e DimStore
Dicas:
/*1- A coluna de ID será criada a partir de uma função de janela. Você deverá se atentar a forma
como essa coluna deverá ser ordenada, pensando que queremos visualizar uma ordem de
Ano/Mês que seja: 2005/january, 2005/February... e não 2005/April, 2005/August...
/*2- As colunas Ano, Mês e Qtd_Lojas correspondem, respectivamente, às seguintes colunas:
CalendarYear e CalendarMonthLabel da tabela DimDate e uma contagem da coluna OpenDate
da tabela DimStore.
/*5. A partir da view criada no exercício anterior, você deverá fazer uma soma móvel
considerando sempre o mês atual + 2 meses para trás.
/*6. Utilize a vwHistoricoLojas para calcular o acumulado de lojas abertas a cada ano/mês.
/*Exercício Desafio 2
Neste desafio, você terá que criar suas próprias tabelas e views para conseguir resolver os
exercícios 7 e 8. Os próximos exercícios envolverão análises de novos clientes. Para isso, será
necessário criar uma nova tabela e uma nova view.
Abaixo, temos um passo a passo para resolver o problema por partes.
PASSO 1: Crie um novo banco de dados chamado Desafio e selecione esse banco de dados
criado.
PASSO 2: Crie uma tabela de datas entre o dia 1 de janeiro do ano com a compra
(DateFirstPurchase) mais antiga e o dia 31 de dezembro do ano com a compra mais recente.
Obs1: Chame essa tabela de Calendario.
Obs2: A princípio, essa tabela deve conter apenas 1 coluna, chamada data e do tipo DATE.
PASSO 3: Crie colunas auxiliares na tabela Calendario chamadas: Ano, Mes, Dia, AnoMes e
NomeMes. Todas do tipo INT.
PASSO 4: Adicione na tabela os valores de Ano, Mês, Dia, AnoMes e NomeMes (nome do mês
em português). Dica: utilize a instrução CASE para verificar o mês e retornar o nome certo.
PASSO 5: Crie a View vwNovosClientes, que deve ter as colunas mostradas abaixo.
/*7.
a) Faça um cálculo de soma móvel de novos clientes nos últimos 2 meses.
b) Faça um cálculo de média móvel de novos clientes nos últimos 2 meses.
c) Faça um cálculo de acumulado dos novos clientes ao longo do tempo.
d) Faça um cálculo de acumulado intra-ano, ou seja, um acumulado que vai de janeiro a
dezembro de cada ano, e volta a fazer o cálculo de acumulado no ano seguinte.
/*8. Faça os cálculos de MoM e YoY para avaliar o percentual de crescimento de novos clientes,
entre o mês atual e o mês anterior, e entre um mês atual e o mesmo mês do ano anterior.