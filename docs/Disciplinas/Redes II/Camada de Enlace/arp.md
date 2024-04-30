# ARP - Address Resolution Protocol
## 0. Resumo

ARP é um protocolo, definido pela RFC 826, que tem a função de resolver os endereços da camada de rede em endereços da camada de enlace.Ele provê um um mapeamento dinâmico entre um endereço [IP](../"Camada de Rede"/ip.md) ao endereço de hardware.

O seu funcionamento é relativamente simples. Dado um cenário onde _host_ A precisar encontrar o endereço MAC de _host_ B, A realiza uma requisição por _Broadcast_ perguntanto quem que possuí o endereço MAC. A

```
5 0.097310006 9e:a2:f4:0e:c8:23 → Broadcast    ARP 60 Who has 192.168.0.139? Tell 192.168.0.131
6 0.097322391 SphereCo_5c:b7:d1 → 9e:a2:f4:0e:c8:23 ARP 42 192.168.0.139 is at 00:e0:1b:5c:b7:d1
```
### 0.1 Comandos no Linux
```shell
arp -a      #mostra o cache do arp
arp -d 192.168.0.1     #delete entrada arp
arp -s 192.168.0.1 9e:a2:f4:0e:c8:23  # insere na tabela uma entrada 
```

--- 
## 1. Introdução


## Referências

<br>
<span class='git-page-authors'>
<a href='https://github.com/eduardoschulz'>Eduardo Schulz</a>
</span>
