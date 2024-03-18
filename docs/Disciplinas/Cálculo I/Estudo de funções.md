# Estudo de Funções
## 0. Resumos

# 1. Introdução
# 1.1 Conjuntos
- Eixo em flecha (não os vetores) é pra dar direção e sentido (igual um vetor)
### Pequena lista dos conjuntos básicos de números para consulta:
- Naturais (IN)
    - Lembrando dos naturais sem o zero tbm existe (IN#)
Números simples >= a zero
- Inteiros (Z)
    - Inteiros sem o zero também existe (Z#)
Numerais simples positivos e negativos
- Racionais (Q)
Designação entre razões de inteiros.
Vale lembrar que denominador zero não é aceito - resultado dá infinito
- Irracionais
Inclui os números não periódicos. Pi, Euler, algumas raízes, etc
- Reais (IR)
Inclui todos os conjuntos anteriores

## 1.2 Intervalos
- conjunto de reais com deseigualdade
- [intervalo de referência de img 1]
- intervalo é sempre crescente
- Todo intervalo é infinito mas a maioria é limitado
    - intervalos ilimitados vão até o infinito
- cuidar q entre chaves é conjunto e n intervalo - {conjunto} - "[intervalo]"
- é importante ter cuidado na hora de marcar os intervalos e n deixá-los com cara de conjuntos
### Pequena lista:
Imagine uma linha com dois limites
- aberto
dois lados abertos
- fechado
dois lados fechados
- semi-aberto à direita
só direita aberta
- semi-aberto à esquerda
só esquerda aberta
- bordas infinitas
em alguns casos dá pra ir até o infinito

## 1.3 Funções propriamente ditas
- funções trabalham com imagens e domínios
Essas funções seguem as regras básicas de formulações de Domínio e Imagem vistas no Ensino Médio
- normalmente o eixo y é a imagem
- Imagem em função do domínio (y em função do x, normalmente)
- lei:
    - 150x
    - identificação da função
    - f(x) = y é considerado uma lei
-  função:
    - y = 150x
    - é o fazer da lei
- dominio abrange todos os conjuntos de valores pra x
    - muita mão calcular tudo
- restrições
    - tira só o q n faz sentido colocar
    - e.g.: y=1/x -> Dom:lR - {0}
    - precisa fzr as provas (até bhaskara) pra n ficar zerado
    - raiz de denominador par 
        - n é lR, vai entrar no domínio de números complexos
        - resultado precisa ser >= 0
    - logaritmos naturais
        - logaritimando precisa ser positivo pra ser real (IR)
        - y = ln(x+8) -> x+8 > 0 -> x > 0
### 1.3.1 Valor numérico de função 
- valor de y quando x e alguém

## 1.4 Gráfico de uma função
Qualquer função na matemática terá um gráfico para lhe representar. Todavia, tenha em mente que nem todo gráfico tem uma função.
Gráficos não precisam necessariamente ter uma escala correta, apenas precisam estar coerentes escritos dentro do plano cartesiano.

### 1.4.1 função polinomial do 1° grau
- f(x) = ax + b
- a e b são IR
- se a=0
    - f(x) = 3 -> ainda é uma função (consatante)
    - valor de x é qql coisa
- a!=0 e b=0
    - linear
- a!=0 e b!=0
    - função afim
- pra todos esses o gráfico é uma reta sempre
- tirando a constante, tds as retas tem algum grau de inclinação
    - quem define a inclunação da reta é o a (taxa de variação)
        - 'a' é uma constante assim como 'b'
        - coeficiente angular
    - taxa de variação positiva é crescer e negativa o contrário (dã)
- coeficientes linear vai ser o 'b'
    - apesar de poder ser negativo, nas aplicações ele pode ser considerado uma posição inicial 
        - evitar resultados negativos em cenários em que eles não são possíveis
- domínios dessa função são normalmente os IR.
- y-y1 = a(x-x1)
    - sem numeração é genérico
    - pra chegar no a faz:
        a=(x2-x1)/(y2-y1)
- Com dois pontos sempre vai dar pra traçar a reta
- sempre dá o double check pra ver se a variação faz sentido com o gráfico
- Identificação da função sempre pode se dar pela definição de dois pontos. Veja, existem unfinitas retas dentro do plano, mas apenas uma com os dois pontos juntos.
Exercícios:
<!--- Adicionar os Exerc em Latex--->
## 1.5 Funções polinomiais no 2° grau
- f(x) = ax² + bx + c com a != 0
- gráfico parabólico
- n adianta ficar fzr tabela de pontos pra lidar com parábolas
- precisa ver 3 pontos apenas
    - pontos q eventualmente interceptem o eixo x
        - n necessariamente pega
        - se pega no eixo x são as raízes
        - quando y = 0
        - ax² + bx + c = 0 -> fórmula de bháskara é necessária
        - se os coeficientes tem números reais sempre tem duas raízes
            - sempre distintas, iguais ou complexas
    - coordenada de vértice
- dois lados dela são simetricos
    - se as duas raízes são inteiros a coord do vértice é o meio termo dos dois
- parábolas tem foco e uma diretriz
    - dentro dos faróis sempre tem um espelho parabólico
- valor de a positivo mostra concavidade pra cima
- [colocar imagem de referência 3]
- a é sempre coeficiente de x²
- raízes não reais indicam q a parábola n bate no x
### 1.5.1 Vértice
Ponto mais baixo ou o mais alto de uma parábola, à depender de sua formação.
É possível encontrar as coordenadas (X, Y) através das fórmulas:
- Xv = (-b)/(2a)
- Yv = -(b² - 4ac)/4a

#### 1.5.1.1 Exemplos
<!--- Adicionar os Exemplos em Latex--->

## 1.6 Funções exponenciais e logaritmicas: Definição, propriedades e gráficos
### 1.6.1 Surgimento do exponencial e logaritmo
Normalmente as funções extrapolam os fatos que as montaram.
Cálculos exponenciais e logaritmicos eram usados muito mais para cálculos financeiros e taxas de crescimnento que qualquer outra coisa.
- Uma é a inversa da outra
    - n necessariamente o inveso
    - Uma função inversa da outra

Propriedades           | Exemplo
:---------------------:|:------------------------:
a^m . a^n = a^(m+n)    | 2³ . 2^5 = 2^(3+5) = 2^8
a^m/a^n = a^(m-n)      | 3^7/3² = 3^(7-2) = 3^5
(a^m)^n = a^(mn)       | (2^5)³ = 2^(5.3) = 2^15
(a/b)^m = a^m/b^m      | (3/5)² = 3²/5² = 9/25
a^m . b^m = (ab)^m     | 2^5 . 3^5 = (2.3)^5 = 6^5
a^0 = 1; a != 0        | 999^0 = 1
m^-m = 1/a^m           | 2^-3 = 1/2³ = 1/8
Atenção com sinais     | (-2)² = (-2).(-2) = 4 // -2² = -(2.2) = -4
^n√a . ^n√b = ^n√(a.b) | ³√2.³√4 = ³√(2.4) = ³√8
^n√a/^n√b = ^nv(a/b)   | ³√16/³√2 = ³√(16/2) = ³√8
^n√a^m = a^(m/n)       | ^5√2³ = 2^(3/5)
^m√(^n√a) = ^(mn)√a    | ³√^5√2 = ^(3.5)√2 = 15√2
^n√a^m = (^n√a)^m      | ³√3² = (³√5)²
^n√0 = 0               | ³√0 = 0
b.^n√a = ^n√(a.b^n)    | 2.³√5 = ³√(5.2³) = ³√40
Atenção com módulos    | se a raiz e par o resultado é módulo, se raiz ímpar o resultado carrega o sinal

### 1.6.2 A função exponencial
- modelagem de crescimento algo de algo
- é basicamente um cálculo para uma das curvas matemáaticas (no caso a exponencial)
- N é uma reta
    - vai ser uma curva mto loca
- geralmente a base é fator de crescimento
- Expoente negativo n troca sinal de ngm, mas de fato o resultado é bastante pequeno
- nunca alcança o zero (expoente precisaria ser -infinito)

### 1.6.3 Função exponencial natural
Esse tipo de função pega o valor da constante de euler (2,718281828...) que, assim como pi, nunca finaliza.
- base é o número de euler
- f(x) = e^(kz), k!=0 ão usadas como modelos de decaimento exponencial
- para f(x) = e^x, qql reta tangente, o coeficiente angular sempre tem o valor da ordenada

#### 1.6.3.1 Número de euler
Por si a constante de euler é bastante usada para cálculos funanceiros e na substituição de bases em logaritmos. 
- e = 2.71828...

x       | 1+(1/x) | (1+(1/x))^x
:------:|:-------:|:-----------:
1       |2        |2
10      |1.1      |2.5937424601
100     |1.01     |2.7048138294215260932671947108075
1000    |1.001    |2.7169239322358924573830881219476
10000   |1.0001   |2.7181459268252248640376646749131
100000  |1.00001  |2.718268237174489668035064824426
1000000 |1.000001 |2.7182804693193768838197997084544

- lim(inf)(1+(1/x))^x -> mas isso serão cenas para o futuro

### 1.6.4 Logaritmos
Mais uma das operações que visam diminuir a dificuldade de cálculos mais complexos.
Ela é batante usada em cálculos de taxa de juros simples de investimentos.
Iniciaram simplificando alguns cálculos mais complexos
- dá pra dimiur os graus de dificuldade das operações
- lê-se sempre pela linha
- depende do conhecimento de potências
    - a definição é basicamente uma potência dentro dela
- 2^x = 4
    - por qual expoente eleva pra ser verdadeiro?
    - log_2 4 = 2
    - a moral é perguntar quantas vezes precisa potencializar pra dar o resultado
- log_b a = X <=> b^x = a
- log de 'a' precisa necessariamente ser positivo
    - exponencialmente a imagem n fica negativa
    - pra evitar cair abaixo de zero nas ordenadas precisa manter > 0 (logaritimando positivo)
#### 1.6.4.1 Condições de existência
- a > 0
- b > 0 também

#### 1.6.4.2 Sistemas de logaritmos
São chamados de sistemas de logaritmos na base **b**. Nesta base, todos os conjuntos gerados de logaritmos são positivos.

##### 1.6.4.2.1 Sistemas de logaritmos decimais
- Henry Briggs, 1561-1630, matemático inglês
- tudo com base 10
- logaritmos comuns ou de Briggs
- indicação de log x (base 10)
<!-- incluir exemplos em LATEX -->

##### 1.6.4.2.2 Sistemas de logaritmos naturais ou neperianos
- Leonhard Euler, 1707-1783
- John Napier, 1550-1617
- indicado por ln(x)
- base com o número de euler
- podem fzr simplificações com eles mesmos
<!-- incluir exemplos em LATEX -->

#### 1.6.4.3 Propriedades operatórias
- uma lista aqui
- logaritmo do produto dá pra abrir na soma
    - da divisão na subtração
    - da potência na multiplicação (produto)
- sempre dá pra fzr a mudança de base
- normalmente se usa o logaritmo natural mesmo
- log_3 5 = ln(5)/ln(3) -> sempre dá pra fzr td baseado nos logaritmos naturais -> 1.464973...
    - log 5/log 3 vai dar a mesma coisa
    - dá pra escolher qql base pra calcular
- na maioria das operações de usa base euler

Propriedade     | Cálculo
:--------------:|:--------:
log do produto  | log_b(ac) = log_b(a) + log_b(c)
log da potência | log_b(a^m) = m.log_b(a)
log da divisão  | log_b(a/c) = log_b(a) - log_b(c)
mudança de base | log_b(a) = log_c(a)/log_c(b)

A última propriedade é particularmente importante devido ao fato de a base diferente entregar o mesmo resultado e podermos trocar tudo por logaritmos naturais.

### 1.6.5 Função logaritmica como a inversa da exponencial
**Teorema:** Se b > 0 e b != 1, então y = b^x e y = log_b(x) são funções inversas.

**Prova:** Se y=b^x, para determinarmos a inversa fazemos x=b^y. Ora, x=b^y é equivalente a log_b(x)=y. Portanto, y=log_b(x) é inversa de y = b^x.

É importante se atentar ao fato de que são inversos ao ponto de terem curvas completamente diferentes umas das outras.
Tenha em mente que a diferença entre um código ter tempo x² é imensa comparado a outro com log(x) - lembre que nesse caso a base é 2.

# 2. Referências
* ANTON, Howard; BIVENS, Irl; DAVIS, Stephen. Cálculo. 10. ed. Porto Alegre: Bookman, 2014. v. 1.
* STEWART, James. Cálculo. 4. ed. São Paulo: Cengage Learning, 2017. v. 1.
* WEIR, Maurice D.; HASS, Joel; THOMAS, George Brinton. Cálculo. 12. ed. São Paulo: Pearson, 2013. v. 1.

<br>
<span class='git-page-authors'>
<a href='https://github.com/GalegoSonolento'>Henrique Haag</a>
</span>
