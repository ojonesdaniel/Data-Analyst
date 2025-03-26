/*MÓDULO 13: EXERCÍCIOS
1. a) Crie um banco de dados chamado BD_Teste.*/

Create DataBase DB_Teste

/*b) Exclua o banco de dados criado no item anterior.*/

Drop DataBase DB_Teste

/*c) Crie um banco de dados chamado Exercicios.*/

Create DataBase Exercicios

/*2. No banco de dados criado no exercício anterior, crie 3 tabelas, cada uma contendo as seguintes
colunas:
Tabela 1: dCliente
- ID_Cliente
- Nome_Cliente
- Data_de _Nascimento
Tabela 2: dGerente
- ID_Gerente
- Nome_Gerente
- Data_de_Contratacao
- Salario
Tabela 3: fContratos
- ID_Contrato
- Data_de_Assinatura
- ID_Cliente
- ID_Gerente
- Valor_do_Contrato
Lembre-se dos seguintes pontos:
a) Garantir que o Banco de Dados Exercicios está selecionado.
b) Definir qual será o tipo de dados mais adequado para cada coluna das tabelas. Lembrando que
os tipos de dados mais comuns são: INT, FLOAT, VARCHAR e DATETIME.
Por fim, faça um SELECT para visualizar cada tabela.*/

Use Exercicios

Create Table dCliente(
    ID_Cliente int PRIMARY KEY
    Nome_Cliente VARCHAR(30)
    Data_de_Nascimento DATETIME
);

Create Table dGerente(
    ID_Gerente int PRIMARY KEY
    Nome_Gerente VARCHAR(30)
    Data_de_Contratacao DATETIME
    Salario Float
);

Create Table fContratos(
    ID_Contrato int PRIMARY KEY
    Data_de_assinatura DATETIME
    ID_Cliente int
    ID_Gerente INT
    Valor_do_Contrato FLOAT
)

Select * From dClientes
Select * From dGerente
Select * From fContratos

/*3. Em cada uma das 3 tabelas, adicione os seguintes valores:
TABELA dCliente
TABELA dGerente
TABELA fContratos*/

/*4. Novos dados deverão ser adicionados nas tabelas dCliente, dGerente e fContratos. Fique livre
para adicionar uma nova linha em cada tabela contendo, respectivamente,
(1) um novo cliente (id cliente, nome e data de nascimento)
(2) um novo gerente (id gerente, nome, data de contratação e salário)
(3) um novo contrato (id, data assinatura, id cliente, id gerente, valor do contrato)*/

/*5. O contrato de ID igual a 4 foi registrado com alguns erros na tabela fContratos. Faça uma
alteração na tabela atualizando os seguintes valores:
Data_de_Assinatura: 17/03/2019
ID_Gerente: 2
Valor_do_Contrato: 33500*/

/*6. Delete a linha da tabela fContratos que você criou na questão 4.*/