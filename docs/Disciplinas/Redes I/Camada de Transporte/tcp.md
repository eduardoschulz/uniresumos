# TCP - Transmission Control Protocol
## 1. Resumo

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

### 1.1 Cabeçalho
<!---
Adicionar gráfico com Cabeçalho do segmento.
--->
+ Src Port - Porta na Origem
+ Dst Port - Porta no Destino
+ Sqn Number - Número de Sequência é acrescentado a cada s


<!---
finalizar cabeçalho
--->

## 2. Desenvolvimento
### 2.1 Cabeçalho

+ Source Port
+ Destination Port
...
