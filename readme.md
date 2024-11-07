[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/IZsr6KQU)
# Bem-vindo ao Exercício "Histograma"

##Um **histograma** é um tipo de gráfico utilizado para representar a distribuição de dados quantitativos, mostrando como os valores de uma variável se distribuem em intervalos. Em vez de representar cada dado individualmente, o histograma agrupa os dados em faixas de valores e exibe a quantidade de dados que se encaixam em cada faixa. Os histogramas são ferramentas essenciais em estatística e análise de dados, especialmente para entender a distribuição e o comportamento geral dos dados.

## Objetivo do exercício
Implemenar uma estrutura que use o vetor de ponteiros.

## Tarefa
Uma loja de conveniência deseja gerar um relatório visual das vendas diárias de suas principais categorias de produtos. Para isso, você deve implementar uma função que recebe um **vetor de ponteiros** que armazena a quantidade vendida em cada categoria. Em seguida, você deve gerar um histograma, onde cada linha representa uma categoria com a quantidade de vendas e uma quantidade correspondente de asteriscos (`*`) como visualização gráfica.

### Requisitos do Exercício

1. **Uso de Vetor de Ponteiros**: O programa deve usar um **vetor de ponteiros para inteiros** para armazenar as quantidades vendidas de cada categoria. Cada posição do vetor deve apontar para um valor que representa as vendas de uma categoria.
2. **Função para Imprimir o Histograma**: Crie uma função `imprime_histograma` que recebe o vetor de ponteiros e o número de categorias e imprime o histograma conforme as regras abaixo.
3. **Impressão do Histograma**:
   - Para cada categoria, imprima o número de vendas seguido de um espaço e uma sequência de asteriscos `*` que representa graficamente o número de vendas.
   - Se a quantidade de vendas for zero, exiba apenas o número `0`, sem asteriscos.

### Parâmetros da Função

- A função `imprime_histograma` deve receber:
  - Um vetor de ponteiros para inteiros (`int* vendas[]`), onde cada ponteiro aponta para a quantidade de vendas de uma categoria.
  - Um inteiro (`int num_categorias`) representando o número de categorias.

### Exemplo de Saída

Se o vetor de ponteiros apontar para os seguintes valores:

```plaintext
{1, 2, 6, 0, 9}
```

A saída esperada é:

```plaintext
1 *
2 **
6 ******
0
9 *********
```

### Passo a Passo:

1. Leia o número de categorias e, para cada uma, a quantidade vendida.
2. **Alocação de Memória**: Use alocação dinâmica de memória para armazenar as quantidades de vendas em um vetor de ponteiros para inteiros.
3. **Atribuição de Valores**: Atribua valores de vendas aos ponteiros do vetor.
4. **Impressão do Histograma**: Percorra o vetor de ponteiros, recuperando o valor de cada ponteiro e imprimindo o histograma conforme o formato especificado.

### Dicas

- Lembre-se de usar a notação de ponteiros para acessar e manipular os valores no vetor de ponteiros.
- Ao final do programa, libere a memória alocada para evitar vazamentos de memória.

### O código que você escrever será automaticamente avaliado aqui no GitHub assim que você fizer o envio. ###
---