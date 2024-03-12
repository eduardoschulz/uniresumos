# Revisão de sistemas digitais, circuitos sequencias e fsm, Simulador de Computador
## Processador
Faz parte da arquitetura de Von Neuman. A arquitetura abrange uma Unidade de controle que manda nos comandos e um Ciclo de dados elaborado com flip-flops JK, em sistemas sequenciais de estado (o processador tem uma máquina de estados dentro dele basicamente)
- calcular, processsar e devolver o processamento
- circuito digital
    - Recebe instruções que dizem como o dado processado deve se comportar
- processadores são programáveis e tem instruções definidas pra processamento dos dados q ele recebe
- o simples é entender que ele é um operador simples
- memórias são elementos externos ao processador
    - apesar de algumas interfaces dele terem memórias
        - a principal no caso
    - registradores ficam dentro do processador (na maioria dos casos)
## Arquitetura x organização
### Arquitetura
- atributos visiveis ao programador e impactam diretamente a execução do programa
- conjuntos de instruções, qtde de bits e mecanismos de E/S influenciam
### Organização
- referente à parte interna
- implementação do hardware
- sinais de controle ,tecnologia de memória, transistores, ...
- n necessariamente interfere na programação, mas sim como ele funciona por baixo dos panos
## Sistemas digitais
- números limitados de valores (0 e 1)
- pulso ou n pulso
    - embasamento do sinal digital
- Bit - unidade mínima (0 ou 1)
- Byte - 8bits
- Palavra - sequência de bytes do tamanho da arquitetura
- Trabalha-se com bases:
    - decimal
    - binária
    - octal - bem pouco utilizada
    - hexadecimal - escalas de cor ou texto em arquivos
### Conversão de decimal
- fazer por divisões sucessivas
- pega o valor decimal e divide ele várias vezes pelo valor da base
- quando chegar em um valor igual ou menor q a base, para
- monta a sequência na ordem invertida e monta o binário, hexadecimal, etc
## Aritmética binária
- é igual uma soma decimal só q com 2 números
- um bit de estouro é um carry
- a subtração tbm é igual a decimal
## Circuitos combinacionais fundamentais
### Multiplexador (mux)
- tem um seletor de entradas pra escolher um pra saída
- Ele basicamente escolhe qual das entradas vai ir pra saída
### Demultiplexador
- Um entrada é quebrada em uma das saidas
- tbm possui um seletor dentro pra dizer qual saída foi agraciada
### XOR - C=A(+)B
- ou exclusivo
- comportamento dela é identico a uma soma binária
- entradas precisa estar em estados diferentes pra saída ser c/ carga (1) - verdadeira
### Meio somador - Half adder
- as entradas vão pro XOR e saem um ADD com C
- [inserir img do meio somador]
### Somador completo (full adder)
- leva em conta o carry out das operações anteriores
- tem basciamente um meio somador dentro pra geração de carry
- [img do somador completo]
- com somadores complestos dá pra fzr uma soma binária de palavra
### Unidade Lógica Aritmética (ULA)
- ula é um componente de operação de unidades lógicas aritméticas
- so uma das operações é mapeada pra saída
- a ula permite um número x de operações
- bota 2 valores q chegam nas entradas do multiplexador
- o seletor pega qual das operações vai ser realizada
## Circuitos sequenciais
- sempre precisa ter uma maneira de resetar
    - n dá pra garantir q tá em zero
        - só com reset
- Execução de sequência
- Precisa de um sinal de clock
- Depende das entradas e do estado anterior do ritmo
### Flip flop SR
- retem informação dentro do clock
- mantém essa info até uma condição ser feita
- base pra elementos de memória
- as duas entradas positivas vão dar abiguidade e n retornar uma saída (manter a q existe muito provavelmente)
### Flip flop D
- montam os registradores dos processadores
- veirifca entradas nas bordas de subida ou descida
- saída só muda no momento de alteração de clock
- sem o clock ele n muda o dado de entrada nunca
    - tá sempre sobreescrevendo o dado salvo
    - se necessário posso deixar de reter a info por querer
### Registrador
Esses registradores são máquinas puras de estado montadas com flip-flops JK. Precisam existir tantos quantos bits o processador processa.
- clocks comuns
- uma saída pra cada flip-flop FK
- unidade de memória mais básica do processador
### FSM - Finite State Machine - máquinas de estados finitos
Máquinas de estado finitos normalmente são ou de Mealy ou de Moore. Normalmente a usabilidade de uma máquina de Mealy é mais simples.
- um contador tem uma só sequencia, mas é bastante parecido com um FSM
- percorrem sequências de estados
- definição de sequencias de passos
- a função é gerar sequências de controle
- Mealy
    - saída depende de estado e entradas
    - estado é um circulo com o nome
    - cada estado da máquina de estados é uma contagem
    - dependendo da condição pra chegar no estado tal o valor de saída pode mudar
    - saída é apresentada na transição
- Moore
    - só depende do estado
    - estado é um circulo com o nome e a saída
    - trocou o estado a saída modifica
- máquinas de estado só os principais componentes dentro de um bloco de controle
- máquinas de estado normalmente levam pra algum lugar

### Flip-flop JK
- clock na subida
- guarda info
- J e K regem as condições de transição
- J=0 e k=0 Q n muda
- J=1 e K=1 Q inverte
- J=1 e K=0 -> 1
- J=0 e K=1 -> 0
- as operações devem ser feitas bit a bit - as respostas são as condições que mudam do atual pro próximo
- vai ter um flip-flop pra cada bit
- Aqui nesse cálculo dá pra aplicar Karnaugh
