/*MÓDULO 8: EXERCÍCIOS
Os exercícios abaixo estão divididos de acordo com uma determinada tabela do Banco de Dados.
Você pode utilizar o INNER JOIN para resolver todas as questões.
FACT SALES
1. a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity,
em ordem decrescente.*/
Select
	Sum(SalesQuantity) as 'Valor total das Vendas',
	ChannelName as 'Canal de Vendas'
From
	FactSales
Inner Join DimChannel
	on FactSales.channelKey = DimChannel.ChannelKey
Group By ChannelName
Order by sum(SalesQuantity) Desc

/*b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas
(StoreName).*/
Select top(100) 
	DimStore.StoreName as 'Nome da Loja',
	Sum(SalesQuantity) as 'Valor total',
	Sum(ReturnQuantity) as 'Valor total devolvido'
From
	FactSales
Inner Join DimStore
	on FactSales.StoreKey = Dimstore.StoreKey
Group By StoreName


/*c) Faça um resumo do valor total vendido (Sales Amount) para cada mês
(CalendarMonthLabel) e ano (CalendarYear).*/

Select top(100) 
	CalendarMonthLabel,
	CalendarYear,
	Sum(SalesAmount) as 'Soma dos Valores'
From
	FactSales
Inner Join DimDate
	on FactSales.DateKey = DimDate.DateKey
Group By CalendarMonthLabel, CalendarYear

/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor
total vendido (SalesQuantity) por produto.
a) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).*/
Select top(1) * from DimProduct
Select top(1) * from FactSales

Select
	DimProduct.ProductName as 'Nome do Produto',
	Sum(SalesQuantity) as 'Qtde. Vendida',
	DimProduct.ColorName as 'Cor do Produto'
From
	FactSales
Inner Join DimProduct
	on FactSales.ProductKey = Dimproduct.ProductKey
Group By ProductName, ColorName
Order By Sum(SalesQuantity) desc

/*b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.*/

Select
	Sum(SalesQuantity) as 'Qtde. Vendida',
	DimProduct.ColorName as 'Cor do Produto'
From
	FactSales
Inner Join DimProduct
	on FactSales.ProductKey = Dimproduct.ProductKey
Group By ColorName
Having Sum(SalesQuantity) >= 3000000

/*3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto
(ProductCategoryName). Obs: Você precisará fazer mais de 1 INNER JOIN, dado que a relação
entre FactSales e DimProductCategory não é direta.*/
Select top(1) * from DimProductCategory
Select top(1) * from FactSales

Select top(1) 
	DimProductCategory.ProductCategoryName as 'Categoria',
	Sum(SalesQuantity) as 'Total de Vendas'
from 
	FactSales
Inner Join DimProduct
	on FactSales.ProductKey = FactSales.ProductKey
		Inner Join DimProductSubcategory
			on DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
					Inner Join DimProductCategory
						on DimProductCategory.ProductCategorykey = DimProductSubcategory.ProductCategoryKey
Group By ProductCategoryName

/*4. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o nome completo
do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, faça um agrupamento de produtos e descubra quais foram os top 10 produtos mais
comprados pelo cliente da letra a, considerando o nome do produto.*/
Select top(1) * from FactOnlineSales


Select
	DimCustomer.FirstName as 'Primeiro Nome',
	DimCustomer.LastName as 'Ultimo Nomes',
	Sum(salesQuantity) as 'Qtde. de Vendas'
From 
	FactOnlineSales
Inner Join DimChannel
	on FactOnlineSales.Costumerkey = DimCostumer.CostumerKey
Where CostumerType = 'Person'
Group By DimCustomer.CustomerKey, FirstName, LastName
Order By Sum(SalesQuantity) Desc


/*5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o
sexo dos clientes.*/

Select
	DimCustomer.Gender as 'Genero',
	Sum(SalesQuantity) as 'Total de Vendas'
From
	FactOnlineSales
Left Join DimCustomer
	on FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
Where Gender is not null
Group By Gender


/*6. Faça uma tabela resumo mostrando a taxa de câmbio média de acordo com cada
CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100.
FACTSTRATEGYPLAN*/




/*7. Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos
cenários: Actual e Budget.
Dica: A tabela DimScenario será importante para esse exercício.
8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.
DIMPRODUCT/DIMPRODUCTSUBCATEGORY
9. Faça um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em
consideração em sua análise apenas a marca Contoso e a cor Silver.*/
/*10. Faça um agrupamento duplo de quantidade de produtos por BrandName e
ProductSubcategoryName. A tabela final deverá ser ordenada de acordo com a coluna
BrandName.*/