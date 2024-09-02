# Integral definida e integral deinida por substituição
Antigamente se utilizava o método da exaustão para saber qual a área (aproximada) abaixo de uma curva de função. Inclusive foi assim que se descobriu a área de um círculo. Consistia basicamente em somar várias formas geométricas abaixo da curva até que se chegasse à uma área próxima do suficiente. *soma de Riemann*. Essa soma forma um limite básico entre as formas e a função.
A integral se utiliza desse limite para calcular áreas abaixo dessas mesmas curvas (é uma formalização matemática)
Ele vai basicamente pegar a integral e limitar a área de ação dela.
**Teorema: Se uma função f é contínua em um intervalo fechado [ a,b ], então f é integrável em [ a,b ]**
Caso a função não tenha nenhum valor abaixo de zero no intervalo dado, o resultado da integral é o mesmo da área abaixo dessa função.
    Caso contrário, exista algo abaixo do eixo x, a integral representa a soma das duas áreas diferentes (*área líquida*). Para se encontrar a área total, é necessário tratar a função como modular.

- sempre um númer
    - área de região ou líquida com sinal
- arrumar o problema de uma área de função aleatória com um eixo
- antes era o método de exaustão
    usar figuras conhecidas pra chegar perto da área real
    - usualmente se chega em um resultado apropriado
    - somatório n i=1 f(Ci)deltax
    - a ideia é inserir zilhões de subintervalos pra chegar o mais próximo possível da área
    - [1 ]
    - a integral definida é uma soma de áreas
- quando função positiva o resultado é a área
    - se negativa em alguns momentos - o resultado é uma área líquida
        - dá o resultado da soma das duas áreas -> não é o tamanho da área compreendida
            - pra isso precisa colocar o negativo em módulo
- sempre dá pra resolver se a função for contínua no intervalo dado
    - intervalo fechado

## propriedades
Essas propriedades são basicamente as mesmas das integrais não-definidas. Existem poucas mudanças realmente.
Com a adição de que se f é integrável nos três intervalos determinados por a, b e c, posso quebrar a integral em dois com os respectivos intervalos.

- limites iguais -> integral = zero
- a -> b sempre (sentido positivo)
    - com limites trocados o resultado é o oposto (resultado negativo)
- propriedades das indefinidas ainda se mantém
- se existir um ponto c entre a e b (c) posso separar a integral em 2
- sempre que for positiva - resultado positivo
- com duas funções do mesmo intervalo segura a com maior área
- funções ímpares tem valores opostos se inverter o sinal do input
- funções pares mantém o sinal mesmo que inverta o imput

## Teorema fundamental do cálculo
Esse teorema diz basicamente que podemos calcular uma integral definida como uma indefinida e depois adicionar os limites lateralmente, diminuindo do limite inferior do superior. Isso se torna bastante útil nos momentos de resolução (é uma das principais ferramentas).
**Se uma função f é contínua no intervalo fechado [ a,b ], então**
**a_S^b f(x)dx = F(b) - F(a)**
**onde F é qualquer função tal que F'(x) = f(x) para todo x em [ a,b ].**
Nesse caso, omitir o "+C" é recomendável, uma vez que a organização da equação vai cortar ele mesmo.
Lembrando que é sempre possível trocar a variável já que é uma *variável muda* e cuidar com curvas não-contínuas (o resultado da área será errôneo).

- função contínua dentro do intervalo
- acha a primitiva
- depois troca os limites de integração nela 
    - começa pelo superior e subtrai o result do inferior
- a constante de integração se cancela algebricamente

-> Área
- toda positiva
    - resultado integral definida do intervalo respresenta a área
- parte pos e parte negativa
    - área é a integral do módulo da função dentro do intervalo de a até b
    - integral de a -> c + c -> b
- [2 ]

## Integrais definidas por substituição
Esse tipo de integral é bastante comum de ocorrer e funciona basicamente igual à uma substituição em uma integral indefinida, mas com extra steps.
Um dos métodos (o mais simples e direto) usa o mesmo esquema da substituição de uma integral indefinida, mas precisamos continuar o cálculo após a substituição do *u* pelo valor quardado, assim como uma resulução normal de integral.

- existem duas formas de resolver

### Referências
- ANTON, Howard; BIVENS, Irl; DAVIS, Stephen. Cálculo. 10. ed. Porto Alegre: Bookman, 2014. v. 1 