# Computação gráfica
O processo de *computação gráfica* *(CG) é basicamente sintetizar todos os dados para geração de uma imagem. Se forçar um pouco a barra, dá para dizer que é o processo inverso do processamento gráfico.
Uma modelagem em CG tem algumas *primitivas* básicas. Sempre será uma coordenanda de 3 pontos. Tenha em mente que CG utiliza o espaço 3D para modelagem das figuras e, para tanto, tem 3 eixos (x, y, z), sempre nessa ordem. Seguindo nessa ideia, podemos montar polígonos com esses pontos de coordenada e montar malhas (*Mesh*) a fim de gerar as figuras.
Um fato interessante é que preferencialmente se gera figuras com triângulos, já que possui menos pontos para gerá-lo (ferramentas inclusive mostram opções de "trianguloficar" os modelos 3D).
- *Frame buffer*: É uma porção de memória usada para criar o
pixel map que será enviado para o monitor.
- *Double buffering*: técnica que utiliza um buffer auxiliar
para criar imagem enquanto um buffer é desenhado
(alternância). Usado para evitar o flicker (tremer a
imagem)
*Game loop* é um conceito de pipeline que sempre *atualiza*, *renderiza* e *sincroniza* dados e processamento de imagem para lançar ao I/O (normalmente o monitor) - mais sobre isso na sequência.

## Renderização
- Essa técnica utiliza cálculos (normalmente vetoriais) para transposição do que seria um ambiente 3D (se for uma renderização 3D) para um plano 2D (tela do monitor - matriz - e o processamenmto de uma GPU). Todo o cálculo de luz e como ela interage com o ambiente, além da tradução para a vizualização em matriz, é feita nessa fase.

- CG
- representação de objetos e modelos usam vértices/pontos -> coordenadas no espaço
  - normalmente associados no modelo 3D, mas o 2D tbm usa obviamente
- a junção dessas coordenadas formam os polígonos
  - normalmente a primitiva é na forma de um triângulo
  - rotacionamento e planos são formados com esses elementos
  - álgebra linear é usada conceitualmente
- a origem do sistema cartesiano é 0,0,0 -> canto do sistema
- é interessante atrelar as unidades dos operadores 3D (como o Blender) pra unidades reais (e.g. metros) para coerência
- em geral para os cálculos, arestas não são tão utilizadas
  - em processamento gráfico em algumas situações as arestas podem ser úteis
- no contexto de CG, polígono e face é a mesma coisa
- o fato de triângulos serem o polígono com menor número de vértices, ele é bastante usado para implementações efetivas (mais estáveis e baratas computacionalmente)
  - algoritmos mais efetivos utilizam malhas triangularizadas de polígonos
- técnica de subdivisão de superfícies
  - aumenta a quantidade de polígonos e procura quadruplicar a quantidade de polígonos
  - fica cada vez mais *smooth*
  - só precisa cuidar pra não explodir a quantidade de polígonos no modelo
  - os pontos não podem ser colineares
### game loop
- desenho do processo gráfico
- processamento mais simples das entradas dos usuários - detecção de eventos
- render é a fase onde o processamento realmente acontece - faz parte do gameloop para computar as alterações realizadas no programa
### Renderização
- render
- ainda é informação visual sem a transposição pra pixel
- imagens são dados bidimensionais
- wireframe view - aramado - estrutura básica poligonal
- solid view - geometria sobre os polígonos com shadding (shaders - sombreamento)
- rendering - iluminação e pós-processamento - mais próximo da imagem final - ainda aparece debugs
- render usa vetores dos objetos para a tela e calcular o direcionamento dos raios de luz
  - inclusive, alguns tipos de material precisam guardar informações de outros objetos - a maioria dos cálculos são feitos na hora - dependendo da complexidade da imagem, uma renderização pode levar horas

## Pipeline gráfico
- sequência de etapas com entrada de dados - processamento por etapas
- idealmente os processos podem ser paralelizados (como em uma pipeline padrão de processador)
- o gargalo (bottleneck) da pipeline é o processo mais lento - uma peça de hardware mais fraca pode desacelerar o processo
- estágio de aplicação ainda está contido no código - a maioria das informações e bufferizações acontece aqui
- processamento geométrico monta os vértices e começa a geração de polígonos
- depois de todo o posicionamento correto na cena, entra a rasterização
  - tamanho da imagem
  - resolução
  - posicionamento à partir da posição da câmera
  - aplica algoritmos específicos para diferentes fases
  - os prépixels (fragmentos) são settados
  - input - vértice montados
  - output - fragmentos
- pixel processing pega os fragmentos e processa
  - variando com as informações passadas À ele, ele gera a imagem de verdade
  - dá pra ter mais de um frag pra mesma posição de pixel
    - aqui ele dá um blend e entende a cor final do pixel
- aí dá o resultado final - frame buffer 
  - dá pra meter uns efeito em cima ainda
  - isso aqui é o pós-processamento

### Referências
- Real-time rendering - 4th ed. / 2018 - ( Livro eletrônico ) 
  - https://pdfroom.com/books/real-time-rendering/XDkgVjmNg9B -> aparentemente o leitor de PDF funciona
 wow