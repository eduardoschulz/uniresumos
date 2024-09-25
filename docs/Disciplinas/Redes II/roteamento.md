# Roteamento
## 0. Resumo
O roteamento é responsável pela determinação de rotas para que os pacotes consigam chegar ao seus destinos. Resumindo, como sair de A e chegar em B. Porém há fatores para escolha desta rota, devemos considerar o usuário assim como a saúde da rede para isso. 

### Funcionamento Resumido:
<!---
<figure markdown="span">
 ![datagrama funcionamento](imgs/func-ip.png){ width = "300"}
   <figcaption>Funcionamento do Protocolo IP</figcaption>
</figure>
--->

--- 
## 1. Introdução

Sistemas Autônomos(AS) são responsáveis pela infraestrutura da _internet_, estes sendo ligados por roteadores IP. 

Há dois tipos de roteamento:
* Direto: Ocorre na mesma rede física.
* Indireto: Precisa travessar outra rede utilizando um roteador.

Como que o remetente sabe se o destinatário está na mesma rede? Ele saberá analizando o endereço de rede do destino. No caso de uma rede /24:

Destino:
* 100.200.205.0/24
* 100.200.205.5

Origem:
* 100.200.205.201

Neste caso, ambos pertencem a mesma rede então não é necessário o uso de um roteador.

### 1.1 Tabela de Roteamento

Tabelas de roteamento contém os dados necessário de como encontrar os destinos. Estas são completadas pelos algoritmos de roteamento, e com isso suas informações podem variar dependendo do algoritmo. Apenas contém endereços de redes(ex: 192.168.0.0/24) e não de _hosts_, isso ajuda a diminuir o tamanho destas tabelas.

#### 1.1.2 Tabela de Encaminhamento

Tabelas de encaminhamento são criadas sendo baseadas nas informações das tabelas de roteamento. Estas são sempre usadas quando o roteador for transmitir um datagrama.

## Referências
<!---
* Tanenbaum, A; Feamster, N; Wheterall, D. Computer Networks. 6th ed. Hockham Way, Harlow, Reino Unido: Pearson Educational Limited, 2021.
* Tanenbaum, A. Computer Networks. 3rd ed. Upper Saddle River, New Jersey, EUA:Prentice Hall PTR, 1996.
* Stevens, W. Richard. TCP/IP Illustrated: the Protocols, vol 1. 1st ed. Reading, MA, EU: Addison-Wesley Publishing Company, 1994.
---> 
<br>
<span class='git-page-authors'>
<a href='https://github.com/eduardoschulz'>Eduardo Schulz</a>
</span>
