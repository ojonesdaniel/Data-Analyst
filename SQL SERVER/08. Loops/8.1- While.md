# 🔄 Loops no SQL Server e o comando WHILE

No SQL Server, loops são estruturas que permitem a execução repetitiva de um bloco de código enquanto uma condição específica for verdadeira. Embora o SQL seja uma linguagem declarativa, ele oferece suporte a estruturas de repetição, sendo o `WHILE` a principal delas.

---

## 📌 O que é um loop no SQL Server?

Um loop é um mecanismo que repete a execução de comandos SQL até que uma condição estabelecida seja satisfeita. Ele é útil para tarefas como:

- Atualizar registros em partes.
- Processar linhas de uma tabela uma a uma.
- Realizar operações de controle e manutenção.

No SQL Server, a principal estrutura de loop é o `WHILE`.

---

## 📌 Comando WHILE

O `WHILE` avalia uma condição antes de executar o bloco de código. Se a condição for verdadeira, o bloco de código será executado. Após a execução, a condição é avaliada novamente, e o processo se repete até que a condição se torne falsa.

### 📌 Estrutura básica
```sql
WHILE condição
BEGIN
    -- Bloco de comandos a serem executados
END
```

### 📌 Exemplo
```sql
DECLARE @Contador INT = 1;

WHILE @Contador <= 5
BEGIN
    PRINT 'Contador: ' + CAST(@Contador AS VARCHAR);
    SET @Contador = @Contador + 1;
END
```
🔹 Neste exemplo, o valor do contador é exibido e incrementado até que ele seja maior que 5.

---

O `WHILE` é uma ferramenta poderosa, mas deve ser usado com cuidado para evitar loops infinitos que podem afetar a performance do banco de dados. 🚀

