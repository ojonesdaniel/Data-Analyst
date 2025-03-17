/*MÓDULO 6: EXERCÍCIOS
Os exercícios abaixo estão divididos de acordo com uma determinada tabela do Banco de Dados.
FACTSALES
1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.*/

Select
	channelKey as 'Canal de Vendas',
	Sum(SalesQuantity) as 'Total de Vendas'
From
	FactSales
Group By channelKey

Select
	Storekey as 'ID da Loja',
	Sum(SalesQuantity) as 'Qtde. de Vendas',
	Sum(ReturnQuantity) as 'Qtde. de Devoluções'
From
	FactSales
Group By StoreKey

Select
	channelKey as 'Canal de Vendas',
	Sum(SalesAmount) as 'Total de Vendas'
From
	FactSales
Where Datekey between '20070101' and '20071231'
Group By channelKey

/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor
total vendido (SalesAmount) por produto (ProductKey).
a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso,
mostrar apenas os produtos que tiveram um resultado final de vendas maior do que
$5.000.000.
b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas.
Desconsidere o filtro de $5.000.000 aplicado.*/

Select
	ProductKey as 'Id do Produto',
	Sum(SalesAmount) as 'Faturamento Total'
From
	FactSales
Group By ProductKey
Having Sum(SalesAmount) >= 5000000
Order By Sum(SalesAmount) DESC

/*FACTONLINESALES
3. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID
(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna
SalesQuantity). (R: ID DO CLIENTE 19037)
b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).*/

Select
	CustomerKey as 'ID do Cliente',
	Count(SalesQuantity) as 'Quantidade de Compras'
From
	FactOnlineSales
Group by CustomerKey
Order By Sum(SalesQuantity) desc

Select top (3)
	ProductKey as 'ID do Produto',
	Sum(SalesQuantity) as 'Total de Vendas'
From
	FactOnlineSales
Where CustomerKey = 19037
Group by ProductKey
Order By Sum(SalesQuantity) desc

/*DIMPRODUCT
4. a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
b) Determine a média do preço unitário (UnitPrice) para cada ClassName.
c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.*/

Select 
	BrandName as 'Marca',
	Count(BrandName) as 'Qtde. Produtos'
from 
	DimProduct
Group by BrandName

Select 
	ClassName as 'Classe do Produto',
	Avg(UnitPrice) as 'Média de Preço'
from 
	DimProduct
Group by ClassName

Select 
	ColorName as 'Cor do Produto',
	Sum(Weight) as 'Peso Total'
from 
	DimProduct
Group by ColorName

/*5. Você deverá descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em
ordem decrescente.*/

Select 
	StockTypeName as 'Tipo',
	Sum(Weight) as 'Peso Total'
from 
	DimProduct
Where BrandName = 'Contoso'
Group by StockTypeName
Order By Sum(Weight) desc

/*6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as
16 opções de cores?*/

Select distinct
	BrandName as 'Marca',
	count(Distinct ColorName) as 'Qtde. Cores'
from 
	DimProduct
Group by BrandName

/*7. Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média
salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus
conhecimentos em SQL.*/

Select
	Gender as 'Sexo',
	count(Gender) as 'Qtde. Clientes',
	Avg(YearlyIncome) as 'Media Salarial'
From
	DimCustomer
Where Gender IS NOT NULL
Group By Gender

/*8. Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de
acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer
esse agrupamento.*/

Select
	Education as 'Sexo',
	count(Education) as 'Qtde. Clientes',
	Avg(YearlyIncome) as 'Media Salarial'
From
	DimCustomer
Where Education IS NOT NULL
Group By Education

/*9. Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o
Departamento (DepartmentName). Importante: Você deverá considerar apenas os
funcionários ativos.*/

Select
	DepartmentName as 'Sexo',
	count(DepartmentName) as 'Qtde. Clientes'
From
	DimEmployee
Where Status = 'Current'
Group By DepartmentName

/*10. Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você
deve considerar apenas as mulheres, dos departamentos de Production, Marketing,
Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000.*/

Select
	Title as 'Cargo',
	count(VacationHours) as 'Horas Totais'
From
	DimEmployee
Where Gender = 'F'and DepartmentName in('Production', 'Marketing', 'Engineering', 'Finance') and HireDate Between '1999-01-01' and '2000-12-31'
Group By Title