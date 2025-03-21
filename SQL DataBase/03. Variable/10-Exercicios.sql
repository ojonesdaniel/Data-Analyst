/*MÓDULO 10: EXERCÍCIOS
1. Quando estamos manipulando tabelas, é importante pensar em como os dados serão
apresentados em um relatório. Imagine os nomes dos produtos da tabela DimProduct. Os
textos são bem grandes e pode ser que mostrar os nomes completos dos produtos não seja a
opção mais interessante, pois provavelmente não vão caber em um gráfico e a visualização
ficará ruim.
a) Seu gestor te pede para listar todos os produtos para que seja criado um gráfico para ser
apresentado na reunião diária de equipe. Faça uma consulta à tabela DimProduct que
retorne (1) o nome do produto e (2) a quantidade de caracteres que cada produto tem,
e ordene essa tabela do produto com a maior quantidade de caracteres para a menor.*/

Select 
	ProductName as 'Nome do Produto',
	Len(ProductName) as 'Nº de Caracteres'
from 
	DimProduct
Order By Len(ProductName) Desc

/*b) Qual é a média de caracteres dos nomes dos produtos?*/

Select 
	avg(Len(ProductName)) as 'Media de Nº de Caracteres'
from 
	DimProduct

/*c) Analise a estrutura dos nomes dos produtos e verifique se seria possível reduzir o tamanho
do nome dos produtos. (Dica: existem informações redundantes nos nomes dos produtos?
Seria possível substituí-las?)*/

Select 
	ProductName as 'Nome do Produto Completo',
	Left(ProductName, 10) as 'Nome abreviado'
From
	DimProduct

/*d) Qual é a média de caracteres nesse novo cenário?*/

Select 
	avg(Len(Left(ProductName, 10))) as 'Media de Nº de Caracteres'
From
	DimProduct

/*2. A coluna StyleName da tabela DimProduct possui alguns códigos identificados por números
distintos, que vão de 0 até 9, como pode ser visto no exemplo abaixo.
Porém, o setor de controle decidiu alterar a identificação do StyleName, e em vez de usar
números, a ideia agora é passar a usar letras para substituir os números, conforme exemplo
abaixo:
0 -> A, 1 -> B, 2 -> C, 3 -> D, 4 -> E, 5 -> F, 6 -> G, 7 -> H, 8 -> I, 9 - J
É de sua responsabilidade alterar os números por letras na coluna StyleName da tabela
DimProduct. Utilize uma função que permita fazer essas substituições de forma prática e rápida.*/

Select 
	ProductName as 'Nome do Produto',
	StyleName as 'Original',
	Translate(StyleName, '0123456789', 'ABCDEFGHIJ') as 'Recodificando'
From
	DimProduct

/*3. O setor de TI está criando um sistema para acompanhamento individual de cada funcionário da
empresa Contoso. Cada funcionário receberá um login e senha. O login de cada funcionário será
o ID do e-mail, como no exemplo abaixo:
Já a senha será o FirtName + o dia do ano em que o funcionário nasceu, em MAIÚSCULA. Por
exemplo, o funcionário com E-mail: mark0@contoso.com e data de nascimento 15/01/1990
deverá ter a seguinte senha:
Login: mark0
Senha: MARK15
O responsável pelo TI pediu a sua ajuda para retornar uma tabela contendo as seguintes colunas
da tabela DimEmployee: Nome completo (FirstName + LastName), E-mail, ID do e-mail e Senha.
Portanto, faça uma consulta à tabela DimProduct e retorne esse resultado.*/

Select 
	Concat(FirstName, ' ', LastName) as 'Nome Completo',
	EmailAddress as 'Email',
	left(EmailAddress, Charindex('@', EmailAddress) -1) as 'Login',
	Upper(FirstName + DateName(Day, BirthDate)) as 'Senha'
From
	DimEmployee

/*4. A tabela DimCustomer possui o primeiro registro de vendas no ano de 2001.
Como forma de reconhecer os clientes que compraram nesse ano, o setor de Marketing solicitou
a você que retornasse uma tabela com todos os clientes que fizeram a sua primeira compra neste
ano para que seja enviado uma encomenda com um presente para cada um.
Para fazer esse filtro, você pode utilizar a coluna DateFirstPurchase, que contém a informação da
data da primeira compra de cada cliente na tabela DimCustomer.
Você deverá retornar as colunas de FirstName, EmailAddress, AddressLine1 e DateFirstPurchase
da tabela DimCustomer, considerando apenas os clientes que fizeram a primeira compra no ano
de 2001.*/

Select
	FirstName as '1º Nome',
	EmailAddress as 'Email',
	AddressLine1 as 'Endereço',
	DateFirstPurchase as 'Data da 1º Compra'
From
	DimCustomer
Where DateName(Year, DateFirstPurchase) = 2001


/*5. A tabela DimEmployee possui uma informação de data de contratação (HireDate). A área de
RH, no entanto, precisa das informações dessas datas de forma separada em dia, mês e ano, pois
será feita uma automatização para criação de um relatório de RH, e facilitaria muito se essas
informações estivessem separadas em uma tabela.
Você deverá realizar uma consulta à tabela DimEmployee e retornar uma tabela contendo as
seguintes informações: FirstName, EmailAddress, HireDate, além das colunas de Dia, Mês e Ano
de contratação.
Obs1: A coluna de Mês deve conter o nome do mês por extenso, e não o número do mês.
Obs2: Lembre-se de nomear cada uma dessas colunas em sua consulta para garantir que o
entendimento de cada informação ficará 100% claro.*/

Select
	Concat(FirstName, ' ', LastName) as 'Nome Completo',
	EmailAddress as 'Email',
	HireDate as 'Data da Contratação',
	DateName(day,HireDate) as 'Dia da Contratação',
	DateName(MONTH,HireDate) as 'Mês da Contratação',
	DateName(year,HireDate) as 'Ano da Contratação'
From
	DimEmployee

/*6. Descubra qual é a loja que possui o maior tempo de atividade (em dias). Você deverá fazer essa
consulta na tabela DimStore, e considerar a coluna OpenDate como referência para esse cálculo.*/

Select
	StoreName as 'Nome da Loja',
	OpenDate as 'Data da Inauguração',
	CloseDate as 'Data de Fechamento',
	Datediff(Day, OpenDate, GetDate()) as 'Dias em atividade'
From
	DimStore
Where CloseDate is null
Order By Datediff(Day, OpenDate, GetDate()) Desc