/*Exercícios
1. a) A partir da tabela DimProduct, crie uma View contendo as informações de
ProductName, ColorName, UnitPrice e UnitCost, da tabela DimProduct. Chame essa View
de vwProdutos.*/

Go
Create View vwProdutos as
Select
	ProductName as 'Nome do Produto',
	ColorName as 'Cor',
	UnitPrice as 'Preço',
	UnitCost as 'Custo'
From
	DimProduct
Go
Select * from vwProdutos

/*b) A partir da tabela DimEmployee, crie uma View mostrando FirstName, BirthDate,
DepartmentName. Chame essa View de vwFuncionarios.*/

Go
Create View vwFuncionarios as
Select
	FirstName as 'Nome',
	BirthDate as 'Data de Aniversário',
	DepartmentName as 'Departamento'
From
	DimEmployee
Go	
Select * from vwFuncionarios

/*c) A partir da tabela DimStore, crie uma View mostrando StoreKey, StoreName e
OpenDate. Chame essa View de vwLojas.*/

Go
Create View vwLojas as
Select
	StoreKey as 'ID da Loja',
	StoreName as 'Nome da Loja',
	OpenDate as 'Inauguração'
From 
	DimStore
Go
Select * from vwLojas

/*2. Crie uma View contendo as informações de Nome Completo (FirstName +
LastName), Gênero (por extenso), E-mail e Renda Anual (formatada com R$).
Utilize a tabela DimCustomer. Chame essa View de vwClientes.*/

Go
Create View vwClientes as 
Select
	Concat(FirstName, ' ', LastName) as 'Nome',
	Case
		When Gender = 'M' then 'Masculino'
		Else 'Feminio'
		End as 'Genero',
	EmailAddress as 'Email',
	YearlyIncome as 'Renda Anual'
From
	DimCustomer
Go
Select * from vwClientes

/*3. a) A partir da tabela DimStore, crie uma View que considera apenas as lojas ativas. Faça
um SELECT de todas as colunas. Chame essa View de vwLojasAtivas.*/

Go
Create View vwLojasAtivas as
Select
	*
From
	DimStore
Where Status = 'On'
Go
Select * from vwLojasAtivas

/*b) A partir da tabela DimEmployee, crie uma View de uma tabela que considera apenas os
funcionários da área de Marketing. Faça um SELECT das colunas: FirstName, EmailAddress
e DepartmentName. Chame essa de vwFuncionariosMkt.*/

Go
Create View vwFuncionariosMkt as
Select
	FirstName as 'Nome',
	EmailAddress as 'Email',
	DepartmentName as 'Setor'
From
	DimEmployee
Where DepartmentName = 'Marketing'
Go
Select * from vwFuncionariosMkt

/*c) Crie uma View de uma tabela que considera apenas os produtos das marcas Contoso e
Litware. Além disso, a sua View deve considerar apenas os produtos de cor Silver. Faça
um SELECT de todas as colunas da tabela DimProduct. Chame essa View de
vwContosoLitwareSilver.*/

Go
Create View vwContosoLitwareSilver as 
Select
	*
From
	DimProduct
Where BrandName in('Contoso', 'LitWare') and ColorName = 'Silver'
Go
Select * from vwContosoLitwareSilver

/*4. Crie uma View que seja o resultado de um agrupamento da tabela FactSales. Este
agrupamento deve considerar o SalesQuantity (Quantidade Total Vendida) por Nome do
Produto. Chame esta View de vwTotalVendidoProdutos.
OBS: Para isso, você terá que utilizar um JOIN para relacionar as tabelas FactSales e
DimProduct.*/

Go
Create View vwTotalVendidoProdutos as
Select
	ProductName as 'Nome do Produto',
	count(SalesQuantity) as 'Total de Vendas'
From
	FactSales
Inner Join DimProduct
	on DimProduct.ProductKey = FactSales.ProductKey
Group By ProductName
Go
Select * from vwTotalVendidoProdutos


/*5. Faça as seguintes alterações nas tabelas da questão 1.
a. Na View criada na letra a da questão 1, adicione a coluna de BrandName.*/

Go
Alter View vwProdutos as
Select
	ProductName as 'Nome do Produto',
	BrandName as 'Marca',
	ColorName as 'Cor',
	UnitPrice as 'Preço',
	UnitCost as 'Custo'
From
	DimProduct
Go
Select * from vwProdutos

/*b. Na View criada na letra b da questão 1, faça um filtro e considere apenas os
funcionários do sexo feminino.*/

Go
Alter View vwFuncionarios as
Select
	FirstName as 'Nome',
	BirthDate as 'Data de Aniversário',
	DepartmentName as 'Departamento'
From
	DimEmployee
Where Gender = 'F'
Go	
Select * from vwFuncionarios

/*c. Na View criada na letra c da questão 1, faça uma alteração e filtre apenas as lojas
ativas.*/

Go
Alter View vwLojas as
Select
	StoreKey as 'ID da Loja',
	StoreName as 'Nome da Loja',
	OpenDate as 'Inauguração'
From 
	DimStore
Where Status = 'On'
Go
Select * from vwLojas

/*6. a) Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O
resultado esperado da consulta deverá ser o total de produtos por marca. Chame essa
View de vw_6a.*/

Go
Create View vw_6a as
Select
	BrandName as'Marca',
	Count(ProductName) as 'Total de Produtos'
From
	DimProduct
Group By BrandName
Go
Select * from vw_6a

/*b) Altere a View criada no exercício anterior, adicionando o peso total por marca. Atenção:
sua View final deverá ter então 3 colunas: Nome da Marca, Total de Produtos e Peso Total.*/

Go
Alter View vw_6a as
Select
	BrandName as 'Marca',
	Count(*) as 'Total de Produtos',
	(Sum(Weight)) as 'Peso total'
From
	DimProduct
Group By BrandName
Go
Select * from vw_6a

/*c) Exclua a View vw_6a.*/

Drop View vw_6a