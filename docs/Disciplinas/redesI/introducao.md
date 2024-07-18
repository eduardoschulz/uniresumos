# Introdução a Redes de Computadores

Entendemos uma rede como um conjunto de computadores autonomos conectados que compartilham recursos. Essa conexão pode ser dada de diversas formas sendo ela por diversos meios físicos assim como diversas tecnologias e protocolos. Porém, algo que precisa ficar claro é que esses nós na rede precisam ser idependentes, comunicações entre _master_ e _slave_ não são considerados partes de uma rede[^1].

## História: 

O início das redes de computadores se dá no final dos anos 60 com o desenvolvimento e pesquisa da ARPANET. Anteriormente o mais próximo ao uma rede que se tinha eram as conexões entre os terminais e o _mainframe_. Mas como dito anteriormente, uma conexão entre um nó simples um nó principal não deve ser considerado uma rede. A grande evolução da ARPANET foi seu _design_ que tem em mente nós "iguais" ao contrário do arquitetura anterior. _Packet Switching_ também foi uma grande evolução comparado ao método mais tradicional de _Circuit switching_[^2]. Mais detalhes sobre _packet switching vs. circuit switching_ estão na diciplina de [Redes II/Camada de Rede]("").


<!---Redes hoje em dia não necessariamente são compostas apenas por computadores. Ficou bastante comum o uso de microcontroladores e outras peças de hardware que não são exatamente computadores. Vide os sensores coectados na rede.
Já meio batido mas para deixar claro, as redes funcionam com trocas de bits entre os computadores e a rede. Precisa-se converter o sinal na entrada e na saída.  --> 




## Tipos de redes

| Distancia | Processo | Exemplo |
|--------------|:-----:|-----------:|
| 0.1m|Placa-mae |fluxo de dados da maquina |
| 1m      |  Sistema | Multicomputador| 
| 10m      |  Sala | LAN| 
| 100m      |  Predio | LAN| 
| 1km      |  Campus | LAN| 
| 10km      | Cidade | MAN| 
| 100km      | Pais | WAN| 
| 1000km      | Continente | WAN| 
| 10000km      | Planeta | Internet| 


<!---
## Visão geral de rede
- transmissor (origem)
    - geralmente é dinâmico (pode enviar e receber)
- receptor (destino)
    - mesmo caso do transmissor
- dado enviado/recebido
    - em binário
- canal de coms (link)
    - transporta o dado
- interface - conexão da máquina no meio físico
    - precisa de um meio físico - wifi tbm tem (onda)
    - pega o pulso e transforma em binário
    -->
### Local Area Network (LAN)

Redes locais ou Lans saoi redes privadas que geralmente atuam sobre uma distancia curta, como um casa, predio ou ate mesmo um campus. Sao muito utilizadas para conectar _workstations_ a recursos, como impressoras e servidores privados, e para troca de dados.

#### Topologia
- maneiras de ligar uma rede
- estrela
    - 90% da conexão
    - um switch centralizando a coms da rede
    - se derrubar o centro mata a rede
- barra
    - velha
    - barramento com td mundo ligado lá dentro
    - conector vampiro
    - todo mundo recebe a msg
    - n podia ter duas transmissões ao msm tempo
- anel
    - msg em único sentido
    - token
        - quem tem podia transmitir
### Redes metropolitanas
- transmissão de sinal de wi-fi é um barramento
- td mundo recebe a informação
- MAN - Metropolitan Area Network
- o próximo passo da rede é conectar a rede com outra rede
- necessita de criação e rotas
- rotas diferentes pra chegar em algum lugar
#### Topologia
- DQBD (Dristributed Queue Dual Bus)
Aqui dois cabos interligam os computadores, um para cada direção, não existe um barramento único ou um anel entre eles.
### Redes geograficas distribuidas
- internet foi feita com infra de telefonia
- WAN - Wide Area Network
- qql coisa gera interferência
    - redes grandes podem usar rádio em alguns momentos
- logicamente tem roteamento
- internet é um modelo de WAN
    - ou pode ser um miolo da porrada de rede
    - sem acesso de borda a internet n funciona
Esse tipo de rede não tem necessariamente um único tipo de topologia, ela pode usar múltiplas inclusive.
O roteamento de dados aqui é imprescindível, uma vez que roteamento mal feito pode atrasar muitas partes do sistema.
## Redes sem fio
- cresce absurdamente
- custo de infra é bem menor
- segurança ainda é problemática
    - barramento mto simples - sinal compartilhado
O maior investimento na área de rede sem fio é em segurança, já que é um barrameto bastante simples. Ha não muito tempo era possível escutar (colocar o computador em modo promíscuo) diversos emails e compartilhamento de dados caso estivesse em um ambiente muito movimentado (aeroportos por exemplo).
A maioria das soluções nesse sentido estão na área mais high level, de software e aplicações com criptografia de ponta a ponta.
## Internet
- se levar em conta qql sensor ou IoT tem bilhões de disp dentro dela
- equipamentos são sistemas terminais/hosts
- aplicaçções de internet são programas de aplicação de rede 
Existe uma grande discussão se a internet é ou não uma rede ou um hub de várias redes. A resposta provavelmente está no que ela seria sem um monte de redes de borda para alimentá-la, nada, porque ela não "existe" de verdade.
### Componentes da internet
- Cabos coaxais/fibra óptica/cabos normais de rede
- TCP/IP - são dois protocolos diferentes
- protocolos tão tds prontos
- redes em 4 camadas
- links são enlaces -> tempo do disp até o access point
    - eles formam a rede basicamente
    - uso de meio físico
- equip de comutação
    - troca
    - infindável
    - serve pra trocar pacotes
    - quando o pacote chega lá a linha morre
    - roteadores (routers)
        - quem faz a comutação
A distribuição de rede é levemente hierárquica, o que significa que existem apenas alguns componentes e camadas de comunicação. A maioria delas é referente à componentes de borda.
### intranet
- intranet são redes isoladas de internet
- internet privada.


--------------------

DATA: 07/Mar/2024
- Provedores de Serviços de Internet (ISP's)
    - é um provedor 
    - pdser um de borda ou ISP regional pra coectar regiões e ir pra fora
### tipos de Serviço
- orientado a conexão
    - garante envio correto
    - 
- nã-orientado a conexao
    - n necessariamente garante informação chegando certo do outro lado
    - streaming usa esse tipo de informação
        - velocidade é mais importante q confiabilidade
    - evita bastante latência

## Entidades básicas
- sempre vai ser comuniação cliente e servidor
- dá pra saber claramente a rota e os domínios
- modelo de predomínio na internet
    - servidores dedicados
- hosts:
    - clientes
        - estações de trabalho normais
        - pedem determinado serviço
    - servidores
        - mais forte pra prover serviço pra tds
        - mais processamento
- aplicação distribuída só significa q a aplicação n tá salva no cliente 

## Meio de transmissão
- sempre tem um caminho físico
    - guiado
        cabo coaxal, fibra óptica
        - toda capacidade é distância e tipo da rede
            - cabos tem distância de garantia de conexão
            - a tensão pdser n chegar
        - transmissão bit/segundo
        ### cabo coaxial
        - transmissor de entrana no meio e um outer conducter por fora
        - tem um isolante no meio
        - largura depende do tamanho do cabo
        - cabos de 1km chega a 1 ou 2 Gbps - garantido
        - bidirecional
        - substituição por fibra óptica
        ### cabo de par trançado
        - UTP Unshielded Twisted Pair
        - STP (Shielded Twisted Pair)
        - categoria 3 a 7 (7 é Ethernet de 10Gb)
        ### cabo de fibra óptica
        - fibra de vidro ultrafina
        - pulso de luz (lazer)
        - Ethernet de 100 Mbps
        - transmissão de alta velocidade
        - qualidade deve ser bem alta
        - situações mto extremas estragam o cabo (ressecamento)
        - tem um núcleo com uma capa reflexiva (casca) pra n perder sinal
        - quase na velocidade da luz
        - normalmente quebra fora da casca
    - não-guiados
        - atmosfera ou espaço
        - satélite, infravermelho, microondas
        - precisa de um direcionamento das antenas
        - direcionada
        - bem menos seguro
        - usa onde precisa
            - deserto, pântano, difícil acesso
        ### satélites
        - 50Mbps - único problema é a latência
        ### microondas
        - ondas de rádio
        - interferência pacas
            - em frequências altas
        - 155Mbps
        ### infravermelho
        - desgraça

## Protocolos
- conjunto de regras de coms
- o q é o primeiro bit
- definem formato e ordem de mensagens 
- divide entre sinalização e informação
    - msg de conexão tem bem mais sinal q info 
- overhead - informações a mais de cabeçalho
    - protocolos diferentes tem cabeçalhos completamente diferentes
    - n considerada na velocidade efetiva da coms

## camadas de protocolo
- programação de camadas
- separação de camadas facilita na hora de atualizar e montar diferentes tipos de camadas
- melhor maneira de montar sistemas complexos
- Modelo Ozi é o ideal (referência) de rede - mas a maioria é TCP/IP
- cada camada fala com ela mesma no outro lado
- camadas de baixo presta serviço pra td mundo
- o request vai descendo e conforme vai as informações das camadas acumulam, quando chega no destino ele sobe
### aplicação
- app
- ftp, smtp, http
### transporte
- TCP, UDP
- transportes entre terminais
- bota no processo correto
### rede
- IP
- rota
- comunicação com máquinas distantes
### enlace
- PPP, Ethernet
- lig de 2 pontos
### física (tá dentro do enlace)
- modulaão de bit no meio
### hierárquicos
- um monte de etapa vinculada uma com a outra 

<br>
<span class='git-page-authors'>
<a href='https://github.com/GalegoSonolento'>Henrique Haag,</a>
<a href='https://github.com/eduardoschulz'>Eduardo Schulz</a>
</span>


## Referências
[^1]: Tanenbaum, A; Feamster, N; Wheterall, D. Computer Networks. 6ª ed. Hockham Way, Harlow, Reino Unido: Pearson Educational Limited, 2021.
[^2]: Sunshine, C. Computer Network Architectures and Protocols. 2ª ed. Plenum Press, Cidade de Nova York, N.Y, Estados Unidos, 1989.
