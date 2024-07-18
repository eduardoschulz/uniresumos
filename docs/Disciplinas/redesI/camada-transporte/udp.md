# UDP - User Datagram Protocol


???+ warning "Aviso"

    Esta página está inacabada e seus conteúdos não foram verificados. 


## 0. Resumo

## 1. Introdução

UDP - User Datagram Protocol, ou Protocolo de Datagrama do Usuário é um simples protocolo orientado a datagrama usado por diversas aplicações que dependem do tempo de resposta. Um fator que difere o **UDP** do [TCP](/docs/Disciplinas/Redes%20I/Camada%20de%20Transporte/tcp.md) é que um Datagrama UDP corresponde a um datagrama IP, enquanto umum protocolo orientado a _streams_ como o TCP. Por não estabelecer conexão antes da transferência de dados é um protocolo muito mais veloz que o TCP. São exemplos de aplicações que dependem do **UDP**: Transmissões de Streaming de video...

Por ser _connectionless_ ele não é confiável como o TCP, não é possível garantir que os datagramas chegaram no destino e nem se chegaram na ordem correta.

### 1.1 Cabeçalho

<figure markdown="span">
 ![datagrama funcionamento](../../imgs/head-udp.svg){ width = "300"}
   <figcaption>Cabeçalho do UDP</figcaption>
</figure>

---
## Referências
* Tanenbaum, A; Feamster, N; Wheterall, D. Computer Networks. 6th ed. Hockham Way, Harlow, Reino Unido: Pearson Educational Limited, 2021.
* IETF, 2022. RFC 9293 detalhada. Disponível em <https://datatracker.ietf.org/doc/html/rfc793.> Acesso em: 09, Março de 2024.

<br>
<span class='git-page-authors'>
<a href='https://github.com/eduardoschulz'>Eduardo Schulz</a>
</span>
