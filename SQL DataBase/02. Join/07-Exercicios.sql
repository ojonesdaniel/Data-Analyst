/*MÓDULO 7: EXERCÍCIOS
Os Joins têm como principal objetivo deixar as tabelas mais informativas, permitindo buscar
dados de uma tabela para outra, de acordo com uma coluna em comum que permita essa
relação.
Dito isso, faça os seguintes exercícios:
1. Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela
DimProductSubcategory para a tabela DimProduct.*/

Select
	DimProduct.ProductKey as 'ID do Produto',
	Dimproduct.ProductName as 'Nome do Produto',
	DimProduct.ProductSubcategoryKey as 'ID da Subcategoria',
	DimProductSubcategory.ProductSubcategoryName as 'Subcategoria'
From
	DimProduct
inner Join DimProductSubcategory on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey


/*2. Identifique uma coluna em comum entre as tabelas DimProductSubcategory e
DimProductCategory. Utilize essa coluna para complementar informações na tabela
DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.*/
Select top(1) * from DimProductCategory
Select top(1) * from DimProductSubCategory

Select
	DimProductSubcategory.ProductCategoryKey as 'ID da Categoria',
	DimProductCategory.ProductCategoryName as 'Categoria',
	DimProductSubcategory.ProductSubcategoryKey as 'ID da Subcategoria',
	DimProductSubcategory.ProductSubCategoryName as 'Subcategoria'
From
	DimProductSubcategory
Left Join DimProductCategory on DimProductCategory.ProductCategoryKey = DimProductSubCategory.ProductCategoryKey

/*3. Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados
(de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas:
StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT
JOIN neste exercício.*/
Select top(1) * from DimStore
Select top(1) * from DimGeography

Select
	DimStore.StoreKey as 'ID da Loja',
	DimStore.StoreName as 'Nome da Loja',
	DimStore.EmployeeCount as 'Número de fúncionarios',
	DimGeography.ContinentName as 'Continente',
	DimGeography.RegionCountryName as 'Páis'
from 
	DimStore
Left Join DimGeography on DimGeography.GeographyKey = DimStore.GeographyKey
Order By StoreKey

/*4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize
o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.*/
Select top(1) * from DimProduct
Select top (1) * from DimProductCategory
Select top(1) * from DimProductSubCategory

Select
	ProductName as 'Nome do Produto',
	ProductDescription as 'Descrição',
	DimProductCategory.ProductCategoryDescription as 'Tipo',
	BrandName as 'Marca',
	UnitPrice as 'Preço'
From
	DimProduct
Inner Join DimProductSubCategory 
	on DimProduct.ProductSubcategoryKey = DimProduct.ProductSubCategoryKey
		Inner Join DimProductCategory 
			on DimProductSubCategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

/*5. A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha
representa um montante destinado a uma determinada AccountKey.
a) Faça um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela.
b) Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
• StrategyPlanKey
• DateKey
• AccountName
• Amount*/



/*6. Vamos continuar analisando a tabela FactStrategyPlan. Além da coluna AccountKey que
identifica o tipo de conta, há também uma outra coluna chamada ScenarioKey. Essa coluna
possui a numeração que identifica o tipo de cenário: Real, Orçado e Previsão.
Faça um INNER JOIN para criar uma tabela contendo o ScenarioName para cada ScenarioKey
da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
• StrategyPlanKey
• DateKey
• ScenarioName
• Amount
7. Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que
subcategorias são essas.
8. A tabela abaixo mostra a combinação entre Marca e Canal de Venda, para as marcas Contoso,
Fabrikam e Litware. Crie um código SQL para chegar no mesmo resultado.
9. Neste exercício, você deverá relacionar as tabelas FactOnlineSales com DimPromotion.
Identifique a coluna que as duas tabelas têm em comum e utilize-a para criar esse
relacionamento.
Retorne uma tabela contendo as seguintes colunas:
• OnlineSalesKey
• DateKey
• PromotionName
• SalesAmount
A sua consulta deve considerar apenas as linhas de vendas referentes a produtos com
desconto (PromotionName <> ‘No Discount’). Além disso, você deverá ordenar essa tabela de
acordo com a coluna DateKey, em ordem crescente.
10. A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel,
DimStore e DimProduct.
Recrie esta consulta e classifique em ordem decrescente de acordo com SalesAmount.*/