# ❌ BREAK e CONTINUE no SQL Server

No SQL Server, dentro de loops como o `WHILE`, é comum controlar o fluxo de execução usando os comandos `BREAK` e `CONTINUE`.

---

## 🔹 **BREAK**

O comando `BREAK` encerra imediatamente o loop mais interno (`WHILE`) no qual ele está inserido.

### Exemplo:
```sql
DECLARE @Contador INT = 1;

WHILE (@Contador <= 10)
BEGIN
    PRINT 'Contador: ' + CAST(@Contador AS VARCHAR);
    
    IF @Contador = 5
        BREAK;

    SET @Contador = @Contador + 1;
END;
```

✨ **Explicação:** Quando o `Contador` chegar em 5, o `BREAK` será executado e o loop será finalizado.

---

## 🔹 **CONTINUE**

O comando `CONTINUE` pula o restante das instruções no corpo do loop e volta imediatamente para a avaliação da condição do `WHILE`.

### Exemplo:
```sql
DECLARE @Contador INT = 0;

WHILE (@Contador < 10)
BEGIN
    SET @Contador = @Contador + 1;

    IF @Contador % 2 = 0
        CONTINUE;

    PRINT 'Número ímpar: ' + CAST(@Contador AS VARCHAR);
END;
```

✨ **Explicação:** Quando o `Contador` for par, o `CONTINUE` fará com que o `PRINT` seja ignorado, exibindo apenas os números ímpares.

---

Esses comandos são úteis para um controle mais preciso sobre a execução dos loops no SQL Server! 🚀