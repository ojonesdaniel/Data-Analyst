/*MÓDULO 9: EXERCÍCIOS
1. Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7*/

DECLARE @valor1 Float = 10, @valor2 Float = 5, @Valor3 Float = 34, @Valor4 Float = 7

/*a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame
essa variável de soma.*/

Declare @soma 
Set @soma = @valor1 + @valor2

/*b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4.
Chame essa variável de subtracao.*/

DECLARE @subtracao
Set @subtracao = @valor3 - @valor4

/*c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o
valor4. Chame essa variável de multiplicacao.*/

DECLARE @multiplicacao
Set @multiplicacao = @valor1 * @valor4

/*d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame
essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.*/

Declare @divisao Float
set @divisao = @valor3 / @valor4

/*e) Arredonde o resultado da letra d) para 2 casas decimais.*/

Select Round(@divisao, 2)

/*2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser
especificado.
a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.*/
/*b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.*/
/*c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.*/
/*d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre
‘quantidade’ e ‘preco’.*/
/*e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.*/

Declare @produto varchar(50)
Declare @quantidade int
Declare @preco Float
Declare @faturamento Float

Set @produto = 'celular'
Set @quantidade = 12
Set @preco = 9.99
Set @faturamento = @preco * @quantidade

Select 
	@produto as 'produto',
	@quantidade as 'quantidade',
	@preco as 'preco',
	@faturamento as 'faturamento'

/*3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de
usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este
usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e
num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:
Dica: você precisará utilizar as funções CAST e FORMAT para chegar no resultado.*/

Declare @varName Varchar(30)
Declare @varDataNascimento Datetime
Declare @varnNumPets int

set @varName = 'Daniel'
set @varDataNascimento = '30/01/2004'
set @varnNumPets = 1

Select 'Meu nome é ' + cast(@varName as varchar(30)) + ', nasci em ' + cast(@varDataNascimento as varchar(30)) + ' e tenho ' + cast(@varnNumPets as varchar(30)) ' pets.'

/*4. Você acabou de ser promovido e o seu papel será realizar um controle de qualidade sobre as
lojas da empresa.
A primeira informação que é passada a você é que o ano de 2008 foi bem complicado para a
empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio é descobrir
o nome dessas lojas que fecharam no ano de 2008, para que você possa entender o motivo e
mapear planos de ação para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado deverá estar estruturado em uma frase, com a seguinte estrutura:
‘As lojas fechadas no ano de 2008 foram: ’ + nome_das_lojas
Obs: utilize o comando PRINT (e não o SELECT!) para mostrar o resultado.*/

Select
	StoreName as 'Nome da Loja',
	CloseDate as 'Data do Fechamento'
From
	DimStore
Where Status = 'Off'

Select
	StoreName as 'Nome da Loja',
	CloseDate as 'Data do Fechamento'
From
	DimStore
Where Format(CloseDate, 'yyyy') = 2008
	
Declare @varListaLojas Varchar(50)
Set @varListaLojas = ''

Select
	@varListaLojas = @varListaLojas + StoreName +', '
From
	DimStore
Where Format(CloseDate, 'yyyy') = 2008

Print 'As lojas fechadas no ano de 2008 foram: ' + @varListaLojas

/*5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para
uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado.*/

Select * from DimProduct
Select * from DimProductSubcategory

Declare @varNomeSubCategoria Int
Declare @varIdSubCategoria varchar(30)


Set @varNomeSubCategoria = 'Fans'
Set @varIdSubCategoria = (select ProductSubcategoryKey from DimProductSubcategory where ProductSubcategoryName = @varNomeSubCategoria)

Select
	*
From
	DimProduct
Where ProductSubcategoryKey = @varIdSubCategoria