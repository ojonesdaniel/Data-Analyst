# 📌 Variáveis no DAX

## 🔹 O que são Variáveis?

As **variáveis no DAX** são definidas usando a palavra-chave `VAR` e ajudam a tornar as fórmulas mais legíveis, reutilizáveis e eficientes. Elas armazenam temporariamente um valor ou expressão, que pode ser referenciado posteriormente com `RETURN`.

---

## ⚐️ Estrutura Geral
```DAX
VAR NomeDaVariavel = Expressão
RETURN ResultadoFinal
```

---

## ✅ Vantagens do Uso de Variáveis
- Melhor **legibilidade** do código
- Evita **repetição** de expressões complexas
- Pode ser usada para **debug** passo a passo
- **Melhora a performance**, pois o valor é calculado uma única vez

---

## 💡 Exemplo Prático

```DAX
LucroComDesconto =
VAR Receita = SUM(Fatos[Vendas])
VAR Custo = SUM(Fatos[Custos])
VAR Desconto = SUM(Fatos[Descontos])
VAR LucroBruto = Receita - Custo
RETURN LucroBruto - Desconto
```

---

## 📊 Tabela de Exemplos de Variáveis no DAX

| Tipo de Variável     | Exemplo                          | Descrição                                                                 |
|----------------------|----------------------------------|---------------------------------------------------------------------------|
| Variável Numérica     | `VAR Total = SUM(Tabela[Valor])` | Armazena o resultado de uma função matemática ou soma                    |
| Variável de Texto     | `VAR Nome = "Daniel"`            | Armazena um valor do tipo texto                                           |
| Variável de Data      | `VAR DataAtual = TODAY()`        | Armazena uma data ou valor derivado de funções temporais                  |
| Variável de Coluna    | `VAR Coluna = Tabela[Coluna]`    | Armazena referência a uma coluna (com cautela, pois depende do contexto)  |
| Variável de Tabela    | `VAR TabelaFiltrada = FILTER(...)` | Armazena uma tabela intermediária para uso posterior                    |
| Variável Lógica       | `VAR Check = IF(x > 10, TRUE(), FALSE())` | Armazena resultado de uma verificação lógica                         |

---

## 🧠 Dicas

- Sempre use `RETURN` após declarar as variáveis.
- Evite nomes genéricos como `x`, `y`, `z`, use nomes descritivos.
- Variáveis são avaliadas **apenas uma vez** no contexto da medida.

---

## 🧪 Testando Variáveis com FORMAT

```DAX
TesteVAR =
VAR A = 10
VAR B = 20
RETURN FORMAT(A + B, "0")
```

