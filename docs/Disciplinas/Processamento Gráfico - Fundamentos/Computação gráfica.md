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

### Shaders
Versões mais atuais das ferramentas de processamento gráfico todas usam uma *Programmable pipeline*, existente desde do OpenGL 2.0. Processadores mais modernos todos utilizam pipelines programáveis.
Essas pipelines programáveis, ao invés de apenas lançar a *geometry data* dentro da GPU e largar na tela, ela pega os dados, lança *buffer*, *shader* e etc, e pode lançar e receber dados da tela ou de outros buffers.
GLEW/GLAD são bibliotecas alcançadas em tempo de execução do código e utilizam o padrão OpenGL (porque é isso que ele é apenas).
Temos 4 estágios dentro da pipeline programável da OpenGL:
• Estágio de Vertex shading
  – Processa cada vértice separadamente
• Estágio de Tesselation shading -> opcional
  – Gera geometria dentro do pipeline (com código)
• Estágio de Geometry shading -> opcional
  – Processa cada primitiva separadamente
• Estágio de Fragment shading
  – Processa cada fragmento separadamente

Pelo guia do OpenGL 4.3, a ordem do pipeline é a seguinte: *Vertex data* => *Vertex shader* => *Tessellation / Control / Shader* => *Tessellation / Evaluation / Shader* => *Geometry / Shader* => *Rasterization* => *Clipping* => *Primitive Setup* => *Fragment Shader* => Imagem representada na tela.

Shaders, nesse sentido, são simplesmente mini-programas que identificam **como** desenhar algo na tela. São *especificamente* montados pra rodar na **GPU**.
Existem 3 tipos/estágios de Shaders:
• Vertex Shaders: descrevem *como* tratar um *vértice*
  – Posição (3D -> 2D)
  – Coordenadas de Textura
  – Cor
• Fragment Shaders: descrevem *como* tratar uma *área* (pixel-size)
  – Cor
  – Z-depth
  – Alpha value
• Processados paralelamente
  – Um para cada vértice de um modelo
  – Um para cada fragmento

A pipeline toda vai rodar em paralelo usando diversos núcleos de processadores da GPU. O paralelismo nesse caso é real. Nesse sentido, dá pra escolher um shader que tenha nosso objetivo e faça uma diferença bastante clara no resultado final do resultado do processamento. Animação e diferenciação do objeto acontecem nessa área - todos esses processos na GPU são *pipeline do hardware*


- programas (pequenos) que implementam/definem/processam info para serem desenhados (geometrias/fragmentos) para o desenho (render) junto com a API gráfica
  - são compilados especificamente pra rodar na placa gráfica (GPU)
- Shading != shaders (pero no mucho)
  - shading (fazer o sombreamento na solid view) utiliza shaders pra conseguir rodar, mas o *shading* serve como um processo maior conceitualmente
- o compilador do código de shader é a própria API gráfica do OpenGL (GLSL) - nessa caso, se estiver utilizando outra biblioteca gráfica ela vai dar conta do recado à sua maneira
  - GLSL é uma linguagem de Shader

### Referências
- Real-time rendering - 4th ed. / 2018 - ( Livro eletrônico ) 
  - https://pdfroom.com/books/real-time-rendering/XDkgVjmNg9B -> aparentemente o leitor de PDF funciona
 wow