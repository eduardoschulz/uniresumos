# Introdução à Análise de Algoritmos: modelos RAM, análise de melhor, pior e caso médio, análise assintótica, propriedades de notações assintóticas e taxas de crescimento de funções e relações de dominância
- dependendo da forma de implementar, mesmo sendo o mesmo algoritmo
    - linguagens diferentes
    - ambientes diferentes
    - hardware diferente
    - todos afetam o tempo de execução do algoritmo
## Modelo RAM
Esse é um dos modelos base para análise *assintótica* e facilita bastante esse processo. RAM é basicamente uma máquina hipotética com memória infinita e espaço infinito. Todas as operações levam exatamente uma unidade de tempo e não há diferença entre os tipos diferentes de memória (cache, disco, etc). Essa arquitetura permite contar o tempo de execução pelo número de passos que o sistema faz para rodar o algoritmo.

- Random Memory Access
- computador hipotético
- não vincula a informação à uma máquina real
- operações simples
    - soma
    - subtração
    - atribuição
    - ...
    - 1 unidade de tempo na máquina hipotética
- laços e subrotinas são compósitos de operações simples
- armazenar 100 ou 1000 elementos
    - é o mesmo processo, mas o espaço usado é diferente
- não diferencia tipos de acesso de memória (RAM, disco, cache, etc)
- memória infinita
- conta a quantidade de operações relizadas
    - pode ser uma label mesmo
- análise de algoritmo não é implementação
    - é apenas o algoritmo
- por isso máquinas RAM não representam a realidade, só o comportamento do algoritmo
- nesse modelo tenta-se olhar para todas as instâncias (impossível)
    - só 3 importam
    - pior, melhor e médio caso
- analise dos tipos de caso precisa de alguns específico
    - para algoritmos de ordenação
        - já ordenado
        - invesamente ordenado (ao contrário)
        - aleatório
- normalmente se monta um gráfico com a cresente do número de passos
- análise sempre para o tamanho de N
- se pega alguns casos médios para traçar no gráfico e a análise ser mais completa
- a análise é sempre feita em cima do pior caso
    - se ele for razoável, estamos bem
    - mais *reliable* para implementações
- sempre relacionado à instâncias do problema

A análise dos casos vai levar em consideração o pior, melhor e caso médio. Usualmente se trabalha com o pior caso, já que dali não passa ("do chão - pior caso - não passa").
### Pior caos
- executa *todas* as instruções que o compõe

### Melhor caso
- algoritmo pula alguns passos

### Caso médio
- a média de execução mesmo
- pega o melhor e o pior e faz a média

## Análise assintótica - Big Oh Notation
Uma análise exata é, muitas vezes, complicado. Diferentes problemas podem ter variações de resultados dependendo do tamanho e da complexidade. Tenha em mente que as possibilidades de resultado geram uma curva (em todos os tipos de caso) e a análise assintótica gera uma *aproximação* geral do resultado possível.
Para a utilização desses casos de análise, utilizamos, principalmente, a **Big Oh Notation**.

### Big Oh notation
Essa notação abrange o *upper bound* (O(f(n))), *lower bound* (Ω(f(n))) e o *"middle" bound* (Θ(f(n))) - chamo de "middle" pois a notação theta é ambas a upper e lower, passando a valer quando as duas são válidas.
-> A validade de uma dessas notações depende bastante do *n significativo*, ou do n em que a curva assintótica passa a valer - basicamente, em *n* muito baixos, tem a chance da curva da função ficar fora da área upper-lower bound por algumas razões (tempo de execução, estrutura, etc), ou seja, toda análise é válida apenas à partir de um n suficientemente grande (pode ser tanto 1 quanto 1564254265426, é sempre necessária uma análise).

Sempre escreva as notações *f(n) = O(n)*, por exemplo. Nessa caso específico, desse tipo de notação, o sinal de igual (=) e o de pertence (∈) valem a mesma coisa. Escrever em outra ordem implica que a notação está dentro de uma função e isso leva à alguns problemas lógicos que vou evitar de abordar aqui.

#### Definições formais
- 1ª definição formal:
    – Denota-se f(n) = O(g(n)) → significa que c * g(n) é o limite superior na função f(n).
    – Desta forma, existe uma constante c tal que f(n) é sempre <= c * g(n), para um n suficientemente grande (ou seja, n >= n0 para alguma constante n0).

- 2a definição formal:
    – Denota-se f(n) = Ω(g(n)) → significa que c * g(n) é o limite inferior na função f(n).
    – Desta forma, existe uma constante c tal que f(n) é sempre >= c * g(n), para todo n >= n0).

- 3a definição formal:
    – Denota-se f(n) = Θ(g(n)) → significa que c1 * g(n) é o limite inferior na função f(n), para todo n >= n0.
    – Desta forma, existem as constantes c1 e c2 tal que f(n) é <= c1 * g(n) e f(n) é >= c2 * g(n). Isso significa que g(n) fornece um bom limite em f(n).

- trabalhando em termos de limites
- limites inferior e superior
- o comportamento do algoritmo oscila bastante
    - ele pode se comportar de formas diferentes dependendo do tamanho da entrada
    - dificulta nomenclatura específica dos piores casos
- n_0 = N suficientemente grande
    - a partir daqui se mostram as curvas upper bound e lower bound
    - a partir de n_0 a análise segura para N tendendo ao infinito
    - é a partir de onde o upper ou lower cobre a curva da função
- assíntota -> à medida que tende ao infinito o comportamento real e o upper bound se aproximam
- ignora constantes multiplicativas
- tempo constante é o que faz o algoritmo funcionar mas não é relacionado ao tamanho da entrada
- constantes to theta são sempre maiores que zero
    - no theta é o N_0 que serve pros 2
- cuide a ordem de apresentação
    - sempre a função = conjunto
    - notação é errada matemáticamente (sinal de pertence != do de igual, mas aqui pode, azar)

### A assíntota
Lembre-se que, em geometria analítica, a assíntota é uma curva que gradualmente se aproxima de ambos os eixos x e y e, considerando um limite infinito, a assíntota virtualmente se torna parte dos eixos.
*Assintótico* é um termo que utiliza a ideia de uma assíntota de forma mais abrangente. "É usado para descrever uma situação em que algo aproxima-se de um valor específico à medida que um parâmetro aproxima-se de um limite (+- ∞)."

## Propriedades e notação
As propriedades daqui cabem à aula de lógica, uma vez que são praticamente as mesmas.
Mas aos curiosos, aqui estão elas:

-> Básicas:
- f (n)=O(f (n))
- c . f (n)=O(f (n))    se c for uma constante
- O(O (f (n)))=O(f (n))
- O(f (n)).O(g (n))=O(f (n). g (n))
- O(f (n). g(n))=f (n). O(g(n))

-> ransitividade:
- f (n)=Θ(g(n)), g(n)=Θ(h(n))→ f (n)=Θ(h(n))
- f (n)=O(g(n)), g(n)=O(h(n))→ f (n)=O(h(n))
- f (n)=Ω(g(n)), g(n)=Ω(h(n))→ f (n)=Ω(h(n))

-> Reflexividade:
- f (n)=Θ(f (n))
- f (n)=O(f (n))
- f (n)=Ω(f (n))

-> Simetria:
f (n)=Θ(g(n)) ↔ g(n)=Θ(f (n))

-> Simetria Transposta:
f (n)=O(g(n)) ↔ g (n)=Ω(f (n))

-> "...é possível fazer uma analogia entre
a comparação assintótica de duas funções f e g
e a comparação de dois números reais a e b:
- f (n)=Θ(g(n)) ≈ a=b
- f (n)=O(g(n)) ≈ a≤b
- f (n)=Ω(g(n)) ≈ a≥b

- transitividade utiliza uma notação lógica para incluir uma função dentro do domínio de outra

## Taxa de crescimento e funções e relação de dominância
Lembre-se que constantes multiplicativas são ignoradas nesse ponto, ou seja, apenas as variáveis realmente importam.
Além disso, todas as funções de uma classe em particular são equivalentes em Big Oh - se tiver f = 23n² e f = 4n²+5, ambas ainda serão O(n²).
A ordem de dominância, ao menos das funções mais básicas e presentes, se dá por:
n! ≫ 2n ≫ n3 ≫ n2 ≫ n log n ≫ n ≫ log n ≫ 1
Siga a tabela para entender a ordem de crescimento:


n/f(n)        | lg n     | n        | n lg n    | n2         | 2n            | n!
--------------|----------|----------|-----------|------------|---------------|-----------------
10            | 0,003 μs | 0,01 μs  | 0,033 μs  | 0,1 μs     | 1 μs          | 3,63 ms
20            | 0,004 μs | 0,02 μs  | 0,086 μs  | 0,4 μs     | 1 ms          | 77,1 anos
30            | 0,005 μs | 0,03 μs  | 0,147 μs  | 0,9 μs     | 1 sec         | 8,4 * 1015 anos
40            | 0,005 μs | 0,04 μs  | 0,213 μs  | 1,6 μs     | 18,3 min      |
50            | 0,006 μs | 0,05 μs  | 0,282 μs  | 2,5 μs     | 13 dias       |
100           | 0,007 μs | 0,1 μs   | 0,644 μs  | 10 μs      | 4 x 1013 anos |
1.000         | 0,010 μs | 1 μs     | 9,966 μs  | 1 ms       |               |
10.000        | 0,013 μs | 10 μs    | 130 μs    | 100 ms     |               |
100.000       | 0,017 μs | 0,10 ms  | 1,67 ms   | 10 seg     |               |
1.000.000     | 0,020 μs | 1 ms     | 19,93 ms  | 16,7 min   |               |
10.000.000    | 0,023 μs | 0,01 seg | 0,23 seg  | 1, 16 dias |               |
100.000.000   | 0,027 μs | 0,10 seg | 2.66 seg  | 115,7 dias |               |
1.000.000.000 | 0,030 μs | 1 seg    | 29,90 seg | 31,7 anos  |               |

- não existe resposta ideal na vida real
- a notação O tem uma relação de dominância dentro de um grupo
    - quadráticas
    - logaritmicas
    - ...
- tempos logarimicos normalmente estão em pesquisa binária


### Referências
- The Algorithm Design Manual (Skiena) 
- Capítulo 2
        - Seção 2.1 -> The RAM Model of Computatio
        - Seção 2.2 -> The Big Oh Notation
        - seção 2.3 -> Growth Rates and Dominance Relations
- Introduction to Algorithms (Cormen, et al.)
- Capítulo 2
        - Seção 2.1 -> Insertion Sort
        - Seção 2.2 -> Analyzing Algorithms
    - Capítulo 3
        - Seção 3.1 -> Asymptotic Notation