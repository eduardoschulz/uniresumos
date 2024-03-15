# TCP - Transmission Control Protocol
## 0. Resumo

TCP - Transmission Control Protocol, ou Protocolo de Controle de Transmissão é um dos protocolos mais conhecidos da camada de transporte. Tem como objetivo manter aconfiabilidade dos dados durante a transmissão na rede. Seu dever é verificar a integridade no recebimento dos segmentos, ordenar a seguencia correta, praticar a retransmissão e outras funções.

Vários protocolos da camada de aplicação dependem do *TCP* como o: SSH, FTP e HTTP. Aplicações que não precisam de confiabilidade e necessitam melhor performance podem utilizar o protocolo da camada de transporte *UDP*. 
<!---
Adicionar artigo sobre UDP.
--->

### Pontos Importantes:

+ O *TCP* não é responsável pela rota que os dados tomam para chegar no destino, na visão do protocolo apenas existem a origem e destino. Será responsabilidade dos protocolos mais abaixo o roteamento de tal dados.
+ É orientado a conexão. O *TCP* depende de um _Handshake_ para estabelecer uma conexão entre a origem e o destino, precisando seguir uma sequência de etapas para estabelecer uma conexão.
+ Ordem de Entrega - O protocolo estabelece uma ordem de entrega para que segmentos mais novos não cheguem antes de segmentos mais antigos que falharam na transmissão. 
+ *Syn* e *ACK*

### 0.1 Cabeçalho
<!---
Adicionar gráfico com Cabeçalho do segmento.
--->
+ Src Port - Porta na Origem
+ Dst Port - Porta no Destino
+ Sqn Number - Número de Sequência é acrescentado a cada s


<!---
finalizar cabeçalho
--->

## 1. Introdução

TCP foi projetado para garantir a transferência de uma _stream_ de _bytes_ de forma confiável através de uma rede.  Seu projeto prevê adaptações do protocolo para seguir propriedades da rede local, e garatir a confiabilidade.

TCP foi definido pela RFC 793 em Setembro de 1981 porém, desde então o protocolo sofreu diversas atualizações. Até o momento(Março de 2024) a última modificação no protocolo ocorreu em Agosto de 2022 pela RFC 9293.

Para que um dispositivo possua suporte para o TCP ele precisara de uma entidade de transporte, isso pode ser uma biblioteca ou um suporte direto provido pelo kernel. Essa entidade será responsável por todas as conexões e pelas interfaces na camada de rede. <!--- Reescrever ultima frase --->

### 1.1 Cabeçalho

 0                   1                   2                   3  
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|          Source Port          |        Destination Port       |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                        Sequence Number                        |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                     Acknowledgment Number                     |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
| Offset|  Res. |     Flags     |             Window            |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|            Checksum           |         Urgent Pointer        |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                    Options                    |    Padding    |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

## Referências
* Tanenbaum, A; Feamster, N; Wheterall, D. Computer Networks. 6th ed. Hockham Way, Harlow, Reino Unido: Pearson Educational Limited, 2021.
* IETF, 2022. RFC 9293 detalhada. Disponível em <https://datatracker.ietf.org/doc/html/rfc793.> Acesso em: 09, Março de 2024.

<br>
<span class='git-page-authors'>
<a href='https://github.com/eduardoschulz'>Eduardo Schulz</a>
</span> 
