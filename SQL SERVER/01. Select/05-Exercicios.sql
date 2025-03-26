/*MÓDULO 5: EXERCÍCIOS
Na resolução dos exercícios, tente usar as boas práticas de organização e comentários no código.
1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.*/

Select
	Count(SalesQuantity) as 'Quantidade de Vendas',
	Count(ReturnQuantity) as 'Quantidade devolvida'
from
	FactSales

/*2. Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes
da empresa, mas apenas de ocupação Professional. Utilize um comando SQL para atingir esse
resultado.*/

Select
	Avg(YearlyinCome) as 'Media Salarial'
from
	DimCustomer
Where Occupation = 'Professional'

/*3. Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
empresa. O seu gerente te pediu os seguintes números e informações:
a) Quantos funcionários tem a loja com mais funcionários?
b) Qual é o nome dessa loja?
c) Quantos funcionários tem a loja com menos funcionários?
d) Qual é o nome dessa loja?*/

Select 
	Max(EmployeeCount) as 'Maior Qtd. Funcionarios'
from 
	DimStore

Select top (1)
	StoreName as 'Nome da Loja',
	EmployeeCount as 'Maior Qtd. Funcionarios'
from 
	DimStore
Order by EmployeeCount Desc

Select 
	Min(EmployeeCount) as 'Menor Qtd. Funcionarios'
from 
	DimStore

Select top (1)
	StoreName as 'Nome da Loja',
	EmployeeCount as 'Menor Qtd. Funcionarios'
from 
	DimStore
Where EmployeeCount is not null 
Order by EmployeeCount

/*4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade
total de funcionários do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informações utilizando o SQL.
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.*/

Select 
	Count(Gender) as 'Total de Homens' 
from 
	DimEmployee
Where Gender = 'M'

Select 
	Count(Gender) as 'Total de Mulheres' 
from 
	DimEmployee
Where Gender = 'F'

Select top (1)
	FirstName as 'Nome',
	EmailAddress as 'Email',
	HireDate as 'Data da Contratação'
from 
	DimEmployee
Where Gender = 'M'
Order By StartDate 

Select top (1)
	FirstName as 'Nome',
	EmailAddress as 'Email',
	HireDate as 'Data da Contratação'
from 
	DimEmployee
Where Gender = 'F'
Order By StartDate 

/*5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes
informações:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, você pode fazer isso em uma mesma consulta.*/

Select 
	Count(Distinct ColorName) as 'Qtde. de Cores',
	Count(Distinct BrandName) as 'Qtde. de Marcas',
	Count(Distinct ClassName) as 'Qtde. de Classes'
from 
	DimProduct
