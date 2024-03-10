# Modelo OSI
## 0. Resumo
O Modelo OSI é um modelo de rede de *referência* onde as funções da rede são divididas por 7 camadas.  Desenvolvido com o intuito de criar uma forma de ajudar sistemas de computadores desiguais a comunicarem entre si. Foi inicialmente criado para ser o padrão porém atualmente é apenas usado no meio acadêmico para representar redes, sendo superado pelo modelo TCP/IP para aplicações no mundo real. 

### 0.1 Princípios do Modelo OSI [1]:

I. Uma camada deve ser criada onde um nível de abstração diferente é preciso.

II. Cada camada deve executar uma função bem definida.

III. A função de cada camada deve ser escolhida em mente com a definição internacional dos protocolos padronizados.

IV. Os limites de uma camada deve ser escolhida para minimizar o fluxo de informações entre as interfaces.

V. O número de camadas deve ser grande o suficiente para que funções distintas não sejam jogadas juntas na mesma camada por causa de necessidade, e deve ser pequena o suficiente para que a arquitetura não se torne pesada.

### 0.2 Camadas do Modelo:
7. Camada de Aplicação
    * Responsável pelo suporte de aplicações. Protocolos exemplo: HTTP, FTP.

6. Camada de Apresentação
    * *Apenas presente no Modelo OSI*. Responsável pela representação de dados. A ideia da camada de sessão era poder representar páginas, por exemplo, em diferentes idiomas. Na realidade essa funcionalidade acabou sendo implementada na própria camada de aplicação. 

5. Camada de Sessão
    * *Apenas presente no Modelo OSI*. Responsável pelas regras de comunicação.

4. Camada de Transporte
    * Responsável pela transmissão lógica de dados. Protocolos de exemplo: [TCP](Camada%20de%20Transporte/tcp.md) e UDP. 
    * No caso do [TCP](Camada%20de%20Transporte/tcp.md), é responsável pela confiabilidade da transmissão.

3. Camada de Rede
    * Responsável pela definição e gerenciamento dos endereçamentos lógicos da rede. Protocolo de Exemplo: IP.

2. Camada de Enlace
    * Responsável pelo encapsulamento dos dados em um _Frame_ ou Quadro. Pode detectar erros mas não o corrige.

1. Camada Física
    * Responsável pela movimentação dos _bits_ entre diferentes _hosts_ através das interfaces, sejam elas elétricas ou por fibra óptica.

## Referências
* Tanenbaum, A. Computer Networks. 3rd ed. Upper Saddle River, New Jersey, EUA:Prentice Hall PTR, 1996. [1]
* Tanenbaum, A; Feamster, N; Wheterall, D. Computer Networks. 6th ed. Hockham Way, Harlow, Reino Unido: Pearson Educational Limited, 2021.
* Filippeti, M. A. CCNA 4.1: Guia Completo de Estudo. Florianópolis, Santa Catarina, Brasil: Visual Books, 2008.