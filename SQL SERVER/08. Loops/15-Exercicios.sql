/*EXERCÍCIOS LOOPS
1. Utilize o Loop While para criar um contador que comece em um valor inicial @ValorInicial e
termine em um valor final @ValorFinal. Você deverá printar na tela a seguinte frase:
“O valor do contador é: “ + ___*/

DECLARE @ValorInicial INT
DECLARE @ValorFinal INT
SET @ValorInicial=1
SET @ValorFinal=100

WHILE (@ValorInicial <= @ValorFinal)
BEGIN
    PRINT 'O valor do contador é: ' + CONVERT(VARCHAR, @ValorInicial)
    SET @ValorInicial = @ValorInicial + 1
END


/*2. Você deverá criar uma estrutura de repetição que printe na tela a quantidade de contratações
para cada ano, desde 1996 até 2003. A informação de data de contratação encontra-se na
coluna HireDate da tabela DimEmployee. Utilize o formato:
X contratações em 1996
Y contratações em 1997
Z contratações em 1998
...
...
N contratações em 2003
Obs: a coluna HireDate contém a data completa (dd/mm/aaaa). Lembrando que você deverá
printar a quantidade de contratações por ano.*/

DECLARE @AnoInicial INT = 1996
DECLARE @AnoFinal INT = 2003

WHILE @AnoInicial <= @AnoFinal
BEGIN
    DECLARE @QtdFuncionarios INT =(SELECT COUNT(*) FROM DimEmployee WHERE
    YEAR(HireDate) = @AnoInicial)
    PRINT CAST(@QtdFuncionarios as varchar(4)) + ' contratações em ' +
    cast(@AnoInicial as varchar(4))
    SET @AnoInicial += 1
END


/*3. Utilize um Loop While para criar uma tabela chamada Calendario, contendo uma coluna que
comece com a data 01/01/2021 e vá até 31/12/2021.*/

DROP TABLE IF EXISTS calendario
CREATE TABLE calendario (
    data DATE
)
DECLARE @DataInicio DATE
DECLARE @DataFim DATE
DECLARE @DataAux DATE

SET @DataInicio = '01/01/2021'
SET @DataFim = '31/12/2021'
SET @DataAux = @DataInicio

WHILE @DataAux <= @DataFim
BEGIN
    INSERT INTO calendario (data) VALUES (@DataAux)
    SET @DataAux = DATEADD(DAY, 1, @DataAux)
END

SELECT * FROM calendario
DROP TABLE IF EXISTS calendario